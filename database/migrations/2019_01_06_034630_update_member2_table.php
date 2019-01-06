<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateMember2Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::drop('member', function (Blueprint $table) {
           
        });
        Schema::create('member', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nama');
            $table->string('username');
            $table->string('password');
            $table->bigInteger('id_provinsi')->unsigned();
            $table->bigInteger('id_kota')->unsigned();
            $table->string('kecamatan');
            $table->integer('kode_pos');
            $table->text('alamat');
            $table->string('no_telp',14);
            $table->string('email');
            $table->string('validation_code');
            $table->integer('status');
            $table->timestamps();

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
