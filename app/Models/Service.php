<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;

    protected $fillable = ['service_name'];

    public $timestamps = false;

    public function workspaceServices()
    {
        return $this->hasMany(WorkspaceService::class, 'service_id', 'id');
    }
}
