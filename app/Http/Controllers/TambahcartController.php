<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TambahcartController extends Controller
{
    public function index()
    {
    	return view('tambahcart');
    }
    public function create(Request $request)
    {
        $this->validate($request,[
            'jumlah_beli'=>'required',
            'name' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'typeaddress' => 'required'
        ]);




        \App\Cart::create($request->all());
        return redirect('/cart')->with('sukses','data berhasil disimpan');
    }
}
