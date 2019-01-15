<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateMember7Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::table('member', function (Blueprint $table) {
            

            $table->foreign('id_provinsi')
            ->references('id')
            ->on('master_provinsi')
            ->onUpdate('cascade')
            ->onDelete('cascade');

            $table->foreign('id_kota')
            ->references('id')
            ->on('master_kota')
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
