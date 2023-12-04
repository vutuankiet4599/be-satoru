<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('workspaces', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->dateTime('opening_hour');
            $table->dateTime('closing_hour');
            $table->text('description');
            $table->string('phone_number')->unique();
            $table->string('address');
            $table->enum('status', [0, 1, 2])->nullable();
            $table->bigInteger('price')->unsigned()->default(0);
            $table->decimal('lat');
            $table->decimal('long');
            $table->float('average_rating');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('workspaces');
    }
};
