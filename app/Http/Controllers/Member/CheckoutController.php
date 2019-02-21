<?php

namespace App\Http\Controllers\Member;

use App\Http\Controllers\Controller;
use App\Keranjang;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckoutController extends Controller
{
    public function index()
    {
    	return view('layouts.checkout');
    }
    public function delete($id)
    {
    	Auth::user()->Keranjang()->findOrFail($id)->delete();
    	return redirect(route('admin.checkout'));
    }
    public function getCost(Request $request)
    {
    	  $origin = $request->origin;
          $destination = $request->destination;
          $berat = $request->berat;
          $courier = $request->courier;
          
          $dataku = array("origin" => $origin,
          "destination" => $destination,
          "berat" => $berat,
          "courier" => $courier
        ); 


        return view('rajaongkir.getCostJson', [
        	'data' => $dataku
        ]);
    }
}
