<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateInvoice1Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::drop('invoice', function (Blueprint $table) {
            
        });

        Schema::create('invoice', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('id_orders')->unsigned();
            $table->bigInteger('id_bank')->unsigned();
            $table->bigInteger('total_pembelian');
            $table->text('catatan_pembeli');
            $table->text('alamat_pengiriman');
            $table->string('kecamatan_pengiriman');
            $table->string('provinsi_tujuan');
            $table->string('kota_tujuan');
            $table->string('jasa_pengiriman');
            $table->string('jenis_layanan');
            $table->string('waktu_pengiriman');
            $table->bigInteger('tarif_pengiriman');
            $table->bigInteger('total_keseluruhan');//sudah ditotal , ditambah dengan tarif pengiriman
            $table->timestamps();

            $table->foreign('id_orders')
            ->references('id')
            ->on('orders')
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
        //
    }
}
