<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKonfirmasiPembayaranTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rating_ulasan', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('id_member')->unsigned();
            $table->bigInteger('id_order_item')->unsigned();
            $table->string('rating');
            $table->string('ulasan');
            $table->integer('status_rating');
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
        Schema::dropIfExists('konfirmasi_pembayaran');
    }
}
