<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class WorkspaceSearchRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'name' => 'string',
            'address' => 'string',
            'area' => 'array',
            'area.*' => 'string',
            'opening_hour' => 'string',
            'closing_hour' => 'string',
            'service' => 'array',
            'service.*' => 'integer',
            'price' => 'numeric|min:0',
            'status' => 'array',
            'status.*' => 'in:0,1,2'
        ];
    }
}
