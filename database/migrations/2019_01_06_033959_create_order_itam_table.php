<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrderItamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_item_', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('id_order')->unsigned();
            $table->bigInteger('id_produk')->unsigned();
            $table->bigInteger('id_bank')->unsigned();
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
        Schema::dropIfExists('order_itam');
    }
}
