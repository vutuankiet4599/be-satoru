<?php

namespace App\Http\Resources;

use Carbon\Carbon;
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
            'opening_hour' => Carbon::createFromFormat("H:i:s", $this->opening_hour)->format("H:i"),
            'closing_hour' => Carbon::createFromFormat("H:i:s", $this->closing_hour)->format("H:i"),
            'description' => $this->description,
            'phone_number' => $this->phone_number,
            'address' => $this->address,
            'status' => $this->status,
            'price_min' => $this->price_min,
            'price_max' => $this->price_max,
            'lat' => $this->lat,
            'long' => $this->long,
            'average_rating' => $this->average_rating,
            'workspace_images' => WorkspaceImageResource::collection($this->whenLoaded('workspaceImages')),
            'reviews_count' => $this->whenCounted('reviews'),
            'services' => ServiceResource::collection($this->whenLoaded('services')),
        ];
    }
}
