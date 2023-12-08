<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Workspace extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public $timestamps = false;

    public function workspaceImages()
    {
        return $this->hasMany(WorkspaceImage::class, 'workspace_id', 'id');
    }

    public function workspaceServices()
    {
        return $this->hasMany(WorkspaceService::class, 'workspace_id', 'id');
    }

    public function orders()
    {
        return $this->hasMany(Order::class, 'workspace_id', 'id');
    }

    public function district()
    {
        return $this->belongsTo(District::class);
    }
}
