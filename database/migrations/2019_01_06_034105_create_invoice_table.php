<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInvoiceTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invoice', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('id_order')->unsigned();
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
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('invoice');
    }
}
