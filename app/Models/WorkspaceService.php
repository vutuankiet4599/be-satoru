<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WorkspaceService extends Model
{
    use HasFactory;

    protected $table = 'workspaces_services';

    protected $guarded = ['id'];

    public $timestamps = false;
}
