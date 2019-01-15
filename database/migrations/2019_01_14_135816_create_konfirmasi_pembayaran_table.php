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
        Schema::create('konfirmasi_pembayaran', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('id_invoice')->unsigned();
            $table->bigInteger('id_member')->unsigned();
            $table->bigInteger('id_bank')->unsigned();
            $table->string('an_rekening');
            $table->string('no_rek_member');
            $table->string('nama_bank');
            $table->string('nominal');
            $table->date('tgl_transfer');
            $table->string('gambar');
            $table->timestamps();

            $table->foreign('id_invoice')
            ->references('id')
            ->on('invoice')
            ->onUpdate('cascade')
            ->onDelete('cascade');

            $table->foreign('id_member')
            ->references('id')
            ->on('member')
            ->onUpdate('cascade')
            ->onDelete('cascade');

            $table->foreign('id_bank')
            ->references('id')
            ->on('bank')
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
        Schema::dropIfExists('konfirmasi_pembayaran');
    }
}
