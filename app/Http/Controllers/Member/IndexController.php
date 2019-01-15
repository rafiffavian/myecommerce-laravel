<?php

namespace App\Http\Controllers\Member;

use App\Http\Controllers\Controller;
use App\Keranjang;
use App\Produk;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index()
    {
    	$data_produk = Produk::all();
    	return view('layouts.produk',compact('data_produk'));
    }

    public function store(Request $request)
    { 
    	$requestData = new Keranjang;

		$requestData['id_member'] = 1;
    	$requestData['quantity'] = 1;
    	$requestData['id_produk'] = $request->id_produk; 

    	$requestData->save();


    	
		

    	return redirect(route('admin.index'));
    }
}
