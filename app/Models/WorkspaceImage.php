<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WorkspaceImage extends Model
{
    use HasFactory;

    protected $table = 'workspaces_images';

    protected $guarded = ['id'];
}
