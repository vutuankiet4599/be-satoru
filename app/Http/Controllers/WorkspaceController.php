<?php

namespace App\Http\Controllers;

use App\Http\Requests\WorkspaceSearchRequest;
use App\Http\Resources\WorkspaceResource;
use App\Models\Workspace;
use App\Models\WorkspaceService;
use Carbon\Carbon;
use Illuminate\Http\Request;

class WorkspaceController extends Controller
{
    public function checkFalse($value)
    {
        return isset($value) && !empty($value);
    }

    public function search(WorkspaceSearchRequest $request)
    {
        $validated = $request->validated();

        $op = '';
        $cls = '';

        if (isset($validated['opening_hour']) && !empty($validated['opening_hour'])) {
            $op = $validated['opening_hour'];
        } else {
            $op = '07:30 AM';
        }

        if (isset($validated['closing_hour']) && !empty($validated['closing_hour']) ) {
            $cls = $validated['closing_hour'];
        } else {
            $cls = '10:00 PM';
        }

        $op = Carbon::createFromFormat('h:i A', $op)->format('H:i:s');
        $cls = Carbon::createFromFormat('h:i A', $cls)->format('H:i:s');
        
        $data = Workspace::withCount('reviews')
            ->withAvg('reviews', 'wifi_rating')
            ->with(['workspaceImages'])
            ->where('opening_hour', '<=', $op)
            ->where('closing_hour', '>=', $cls)
            ->when(isset($validated['name']) && !empty($validated['name']), function ($q) use ($validated) {
                return $q->where(function ($query) use ($validated) {
                    $query->where('name', 'like', '%' . $validated['name'] . '%')
                        ->orWhere('address', 'like', '%' . $validated['name'] . '%');
                });
            })->when(isset($validated['area']) && !empty($validated['area']), function ($q) use ($validated) {
                return $q->whereIn('district_id', $validated['area']);
            })->when(isset($validated['status']) && !empty($validated['status']), function ($q) use ($validated) {
                return $q->whereIn('status', $validated['status']);
            })->when(isset($validated['service']) && !empty($validated['service']), function ($q) use ($validated) {
                $param = WorkspaceService::whereIn('service_id', $validated['service'])->pluck('workspace_id');
                return $q->whereIn('id', $param);
            })->when(isset($validated['price']) && !empty($validated['price']), function ($q) use ($validated) {
                return $q->where('price_min', '<=', $validated['price']);
            })->when(isset($validated['categories']) && !empty($validated['categories']), function ($q) use ($validated) {
                return $q->whereIn('category_id', $validated['categories']);
            })->when(isset($validated['sort_price']), function ($q) use ($validated) {
                if ($validated['sort_price']) {
                    return $q->orderBy('price_min', 'asc')
                        ->orderBy('price_max', 'asc');
                } else {
                    return $q->orderBy('price_min', 'desc')
                        ->orderBy('price_max', 'desc');
                }
            })->when(isset($validated['sort_rating']), function ($q) use ($validated) {
                if ($validated['sort_rating']) {
                    return $q->orderBy('reviews_avg_wifi_rating', 'asc');
                } else {
                    return $q->orderBy('reviews_avg_wifi_rating', 'desc');
                }
            })->when(isset($validated['sort_distance']), function ($q) use ($validated) {
                if (!isset($validated['lat']) || !$validated['long']) {
                    return $q;
                }

                $myLat = $validated['lat'];
                $myLong = $validated['long'];
                
                $condition = $validated['sort_distance'] ? "ASC" : "DESC";

                return $q->orderByRaw(
                    "
                        (6371 * acos(cos(radians(lat)) * cos(radians($myLat)) * cos(radians($myLong) - radians(`long`)) + sin(radians(lat)) * sin(radians($myLat)))) $condition
                    "
                );
            })->paginate(5);

        return response()->json(WorkspaceResource::collection($data)->response()->getData());
    }

    public function recommend()
    {
        $data = Workspace::with(['workspaceImages'])
            ->orderBy('average_rating', 'desc')
            ->take(6)
            ->get();
        
        return response()->json(WorkspaceResource::collection($data));
    }

    public function find(Request $request, $id)
    {
        $data = Workspace::with(['services', 'workspaceImages'])->find($id);
        return response()->json([
            "data" => new WorkspaceResource($data)
        ]);
    }
}
