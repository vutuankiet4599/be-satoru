<?php

namespace App\Http\Controllers;

use App\Http\Requests\WorkspaceSearchRequest;
use App\Http\Resources\WorkspaceResource;
use App\Models\Workspace;
use App\Models\WorkspaceService;
use Carbon\Carbon;
use Illuminate\Database\Query\Expression;
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
        
        $data = Workspace::withCount('reviews')->with(['workspaceImages'])
            ->when(isset($validated['name']) && !empty($validated['name']), function ($q) use ($validated) {
                return $q->where('name', 'like', '%' . $validated['name'] . '%')
                    ->orWhere('address', 'like', '%' . $validated['name'] . '%');
            })->when(isset($validated['area']) && !empty($validated['area']), function ($q) use ($validated) {
                return $q->whereIn('district_id', $validated['area']);
            })->when(isset($validated['opening_hour']) && !empty($validated['opening_hour']) && isset($validated['closing_hour']) && !empty($validated['closing_hour']), function ($q) use ($validated) {
                $op = Carbon::createFromFormat('h:i A', $validated['opening_hour'])->format('H:i:s');
                $cls = Carbon::createFromFormat('h:i A', $validated['closing_hour'])->format('H:i:s');
                return $q->where('opening_hour', '<=', $op)
                    ->where('closing_hour', '>=', $cls);
            })->when(isset($validated['status']) && !empty($validated['status']), function ($q) use ($validated) {
                return $q->whereIn('status', $validated['status']);
            })->when(isset($validated['service']) && !empty($validated['service']), function ($q) use ($validated) {
                $param = WorkspaceService::whereIn('service_id', $validated['service'])->pluck('workspace_id');
                return $q->whereIn('id', $param);
            })->when(isset($validated['price']) && !empty($validated['price']), function ($q) use ($validated) {
                return $q->where('price', $validated['price']);
            })->when(isset($validated['sort_price']), function ($q) use ($validated) {
                if ($validated['sort_price']) {
                    return $q->orderBy('price', 'asc');
                } else {
                    return $q->orderBy('price', 'desc');
                }
            })->when(isset($validated['sort_rating']), function ($q) use ($validated) {
                if ($validated['sort_rating']) {
                    return $q->orderBy('average_rating', 'asc');
                } else {
                    return $q->orderBy('average_rating', 'desc');
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
                        ACOS
                        (
                            (
                                SIN(RADIANS(lat)) * SIN(RADIANS($myLat))
                            ) + (
                                COS(RADIANS(lat)) * COS(RADIANS($myLat))
                            ) * (
                                COS(RADIANS($myLong) - RADIANS(`long`))
                            )
                        ) * 6371 $condition
                    "
                );
            })->paginate(5);

        return response()->json(WorkspaceResource::collection($data)->response()->getData());
    }

    public function recommend()
    {
        $data = Workspace::with(['workspaceImages'])
            ->orderBy('average_rating', 'desc')
            ->take(12)
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
