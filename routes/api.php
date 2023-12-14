<?php

use App\Http\Controllers\ReviewController;
use App\Http\Controllers\WorkspaceController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/workspaces/search', [WorkspaceController::class, 'search']);
Route::get('/workspaces/recommend', [WorkspaceController::class, 'recommend']);
Route::get('/workspaces/{id}', [WorkspaceController::class, 'find']);

Route::get('/reviews/workspaces/{id}', [ReviewController::class, 'workspace']);

Route::get('/districts', [WorkspaceController::class, 'index']);
