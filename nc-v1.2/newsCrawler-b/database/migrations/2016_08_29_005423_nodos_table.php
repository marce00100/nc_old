<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class NodosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
//    public function up()
//    {
//        Schema::create('nodos', function(Blueprint $table){
//           $table->uuid('id')->primary();
//           $table->string('titulo')->nullable();
//           $table->text('descripcion')->nullable();
//           $table->string('link')->nullable();
//           $table->string('autor')->nullable();
//           $table->string('fecha_pub')->nullable();
//           $table->text('content')->nullable();
//           $table->string('categoria')->nullable();                 
//           $table->uuid('id_fuente')->foreign()->references('id')->on('fuentes');
//           $table->string('creado_por')->nullable();
//           $table->string('modificado_por')->nullable();
//           $table->dateTime('creado_en')->nullable();
//           $table->dateTime('modificado_en')->nullable();  
//        });
//    }
//
//    /**
//     * Reverse the migrations.
//     *
//     * @return void
//     */
//    public function down()
//    {
//        Schema::drop('nodos');
//    }
}
