<?php

namespace App\Http\Controllers\Member;

use App\Http\Controllers\Controller;
use App\Member;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    public function index()
    {
    	return view('layouts.register');
    }
    public function store(Request $request)
    {
    	$request->validate([

    		'password_confirmation' => 'required_with:password|same:password|min:6'
    	]);

    	$requestData = new Member;

    	$requestData['nama'] = $request->nama; 
    	$requestData['username'] = $request->username; 
    	$requestData['password'] = bcrypt($request->password); 
    	$requestData['kecamatan'] = $request->kecamatan; 
    	$requestData['email'] = $request->email; 
    	$requestData['kode_pos'] = $request->kode_pos; 
    	$requestData['alamat'] = $request->alamat; 
    	$requestData['no_telp'] = $request->no_telp; 
    	$requestData['id_provinsi'] = $request->id_provinsi; 
    	$requestData['id_kota'] = $request->id_kota; 
    	$requestData['validation_code'] = 2; 
    	$requestData['status'] = 1; 


    	$requestData->save();
    	return redirect(route('admin.login'));
    }
}
