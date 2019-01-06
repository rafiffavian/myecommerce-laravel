<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateMember1Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('member', function (Blueprint $table) {

            $table->foreign('id_provinsi')
            ->references('id')
            ->on('provinsi')
            ->onUpdate('cascade')
            ->onDelete('cascade');

            $table->foreign('id_kota')
            ->references('id')
            ->on('kota')
            ->onUpdate('cascade')
            ->onDelete('cascade');

        });
    }
}
