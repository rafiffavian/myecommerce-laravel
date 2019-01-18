<?php

namespace App\Http\Controllers\Member;



use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
	public function index()
	{
		return view('layouts.login');
	}
	public function auth(Request $request)
	{
					$request->validate([
			        'email'           => 'required|max:255|email',
			        'password'           => 'required',
			    ]);

			    if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
			        // Success
			        return redirect()->intended('/');
			    } else {
			        // Go back on error (or do what you want)
			        return redirect()->back();
			    }
	}

	public function logout(Request $request) 
	{
	  Auth::logout();
	  return redirect(route('admin.login'));
	}
    
}
