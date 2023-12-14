<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ReviewResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            "id" => $this->id,
            "space_rating" => $this->space_rating,
            "wifi_rating" => $this->wifi_rating,
            "average_rating" => $this->average_rating,
            "comment" => $this->comment,
            "user" => new UserResource($this->whenLoaded('user')),
            "workspace" => new WorkspaceResource($this->whenLoaded('workspace')),
            "review_images" => ReviewImageResource::collection($this->whenLoaded('reviewImages')),
        ];
    }
}
