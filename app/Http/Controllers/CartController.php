<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Cart;
use App\Barang;
use App\Datauser;

class CartController extends Controller
{
     public function index()
	{
    		// mengambil data dari table barang
		$data_cart = DB::table('Cart')->paginate(12);
		$barang = Barang::all();
	
 
    		// mengirim data barang ke view index
		return view('cart',['data_cart' => $data_cart,'barang' => $barang]);
 
	}
	 public function delete($id)
    {
        $cart = \App\Cart::find($id);
        $cart->delete($cart);
        return redirect('/cart');
    }
    

}
