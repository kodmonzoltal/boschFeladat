<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSzervizkonyvsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('szervizkonyvs', function (Blueprint $table) {
            $table->id();
            $table->string('tulajdonos','50');
            $table->string('auto');
            $table->boolean('garancialis');
            $table->string('eletkor');
            $table->datetime('szerviz_kezdete');
            $table->datetime('szerviz_vege')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('szervizkonyvs');
    }
}
