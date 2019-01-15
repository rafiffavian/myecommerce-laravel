<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateKeranjang2Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

         Schema::create('keranjang', function (Blueprint $table) {

            $table->bigIncrements('id');
            $table->bigInteger('id_produk')->unsigned();
            $table->bigInteger('id_member')->unsigned();
            $table->bigInteger('quantity');
            $table->timestamps();

            $table->foreign('id_produk')
            ->references('id')
            ->on('produk')
            ->onUpdate('cascade')
            ->onDelete('cascade');

            $table->foreign('id_member')
            ->references('id')
            ->on('member')
            ->onUpdate('cascade')
            ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
