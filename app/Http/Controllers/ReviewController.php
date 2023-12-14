<?php

namespace App\Http\Controllers;

use App\Http\Resources\ReviewResource;
use App\Models\Review;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function workspace(Request $request, $id)
    {
        $data = Review::with(['user', 'reviewImages'])
            ->where('workspace_id', $id)
            ->get();
        
        return response()->json([
            "data" => ReviewResource::collection($data),
        ]);
    }
}
