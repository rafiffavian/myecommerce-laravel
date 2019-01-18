<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Keranjang extends Model
{
    protected $table = "keranjang";
    protected $guarded = [];

    public function Produk()
    {
    	return $this->belongsTo(Produk::class,'id_produk');
    }
}
