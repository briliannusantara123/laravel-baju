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

Route::resource('/','HomeController')->except(['show','update']);
Route::get('/home/cari','HomeController@cari');

Route::get('/login','AuthController@login')->name('login');
Route::post('/postlogin','AuthController@postlogin');
Route::get('/logout','AuthController@logout');

Route::group(['middleware' => ['auth','checkRole:masteradmin']], function () {

Route::resource('kategori','KategoriController');
Route::resource('merk','MerkController');
Route::resource('gender','GenderController');
Route::resource('jenispakaian','JenispakaianController');
Route::resource('subkategori','SubkategoriController');
Route::resource('supplier','SupplierController');
Route::resource('barang','BarangController');
Route::resource('transaksi','TransaksiController');
Route::resource('histori','HistoriController');
Route::resource('mutasi','MutasiController');
Route::resource('historimutasi','HistorimutasiController');
Route::resource('pembelian','PembelianController');
Route::get('/bukti','BuktiController@index');

});

Route::group(['middleware' => ['auth','checkRole:pembeli,masteradmin']], function () {
Route::resource('cart','CartController');
Route::get('/home/caris','HomeController@caris');
Route::get('/barang/create', 'BarangController@create');
Route::post('/barang/stores', 'BarangController@stores');
Route::get('/home/{id}/detail', 'HomeController@detail');
Route::get('/home/{id}/cart', 'HomeController@cart');
Route::get('/home/{id}/tambahcart','HomeController@tambahcart');
Route::post('/tambahcart/create','TambahcartController@create');
Route::get('/cart/{id}/delete','CartController@delete');
Route::post('/cart/create','CartController@create');
Route::get('/payment','PaymentController@index');
Route::post('/payment/stores','PaymentController@stores');

});

Route::get('/register','RegisterController@index');
Route::post('/register/create','RegisterController@create');

