<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/register/', 'Member\RegisterController@index')->name('admin.register');
Route::post('/register/store', 'Member\RegisterController@store')->name('admin.register.store');
Route::get('/login/', 'Member\LoginController@index')->name('admin.login');
Route::post('/login/auth/', 'Member\LoginController@auth')->name('admin.login.auth');



Route::middleware(['auth'])->group(function(){
	Route::post('logout', 'Member\LoginController@logout')->name('logout');
	Route::get('/', 'Member\IndexController@index')->name('admin.index');
	Route::post('/store/', 'Member\IndexController@store')->name('admin.store');
	Route::get('/checkout/','Member\CheckoutController@index')->name('admin.checkout');
	Route::get('/checkout/{id}/delete/','Member\CheckoutController@delete')->name('admin.checkout.delete');
});	
	

