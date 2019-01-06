<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateRatingUlasan1Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('rating_ulasan', function (Blueprint $table) {

            $table->foreign('id_member')
            ->references('id')
            ->on('member')
            ->onUpdate('cascade')
            ->onDelete('cascade');

            $table->foreign('id_order_item')
            ->references('id')
            ->on('order_item_')
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
