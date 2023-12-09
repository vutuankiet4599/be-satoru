<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class WorkspaceResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'opening_hour' => $this->opening_hour,
            'closing_hour' => $this->closing_hour,
            'description' => $this->description,
            'phone_number' => $this->phone_number,
            'address' => $this->address,
            'status' => $this->status,
            'price' => $this->price,
            'lat' => $this->lat,
            'long' => $this->long,
            'average_rating' => $this->average_rating,
            'workspace_images' => $this->whenLoaded('workspaceImages'),
            'reviews_count' => $this->reviews_count,
        ];
    }
}
