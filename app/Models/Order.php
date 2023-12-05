<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public $timestamps = false;

    public function workspace()
    {
        return $this->belongsTo(Workspace::class, 'workspace_id', 'id');
    }
}
