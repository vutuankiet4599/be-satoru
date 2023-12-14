<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
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
            "username" => $this->username,
            "avatar_url" => $this->avatar_url,
            "DOB" => $this->DOB,
            "address" => $this->address,
            "phone_number" => $this->phone_number,
            "role" => $this->role,
        ];
    }
}
