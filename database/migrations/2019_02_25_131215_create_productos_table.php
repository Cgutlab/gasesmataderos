<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productos', function (Blueprint $table) {
            $table->increments('id');
            $table->text('nombre');
            $table->text('texto')->nullable();
            $table->text('imagen')->nullable();
            $table->text('pdf')->nullable();
            $table->text('texto2')->nullable();
            $table->string('ralacionado1',50)->nullable();
            $table->string('ralacionado2',50)->nullable();
            $table->string('ralacionado3',50)->nullable();
            $table->string('subfamilia',50);
            $table->string('orden',50);
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
        Schema::dropIfExists('productos');
    }
}
