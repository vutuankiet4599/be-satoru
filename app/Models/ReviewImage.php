<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReviewImage extends Model
{
    use HasFactory;

    protected $table = 'reviews_images';

    protected $guarded = ['id'];

    public $timestamps = false;

    public function review()
    {
        return $this->belongsTo(Review::class, 'review_id', 'id');
    }
}
