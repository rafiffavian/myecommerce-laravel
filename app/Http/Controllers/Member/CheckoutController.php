<?php

namespace App\Http\Controllers\Member;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Keranjang;
use App\Produk;
use DB;

class CheckoutController extends Controller
{
    public function index()
    {
    	$keranjang = DB::table('keranjang')
    	->join('produk', 'keranjang.id_produk', '=', 'produk.id')
    	->select('keranjang.*','produk.*')
    	->get();
    	return view('layouts.checkout',['keranjang'=>$keranjang]);
    }
}
