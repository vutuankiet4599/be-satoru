<?php

namespace App\Http\Controllers;

use App\Models\District;
use Illuminate\Http\Request;

class DistrictController extends Controller
{
    public function index(Request $request)
    {
        return response()->json([
            "data" => District::withCount('workspaces')->get(),
        ]);
    }
}
