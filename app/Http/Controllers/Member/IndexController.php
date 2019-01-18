<?php

namespace App\Http\Controllers\Member;

use App\Http\Controllers\Controller;
use App\Keranjang;
use App\Produk;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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

		$requestData['id_member'] = Auth::user()->id;
        $requestData['id_produk'] = $request->id_produk; 
    	$requestData['quantity'] = $request->quantity; 

    	$requestData->save();


    	
		

    	return redirect(route('admin.index'));
    }
}
