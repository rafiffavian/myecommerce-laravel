<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateOrders2Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::drop('orders', function (Blueprint $table) {
    
        });
        
         Schema::create('orders', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('id_member')->unsigned();
            $table->date('tgl_order');
            $table->dateTime('tgl_expired');
            $table->bigInteger('status_order')->unsigned();
            $table->timestamps();

            $table->foreign('id_member')
            ->references('id')
            ->on('member')
            ->onUpdate('cascade')
            ->onDelete('cascade');

            $table->foreign('status_order')
            ->references('id')
            ->on('status_order_')
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
