<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Barang; 


class HomeController extends Controller
{

    public function index()
	{
    		// mengambil data dari table barang
		$data_barang = DB::table('Barang')->paginate(12);
	
 
    		// mengirim data barang ke view index
		return view('home',['data_barang' => $data_barang]);
 
	}
 
	public function cari(Request $request)
	{
		// menangkap data pencarian
		$cari = $request->cari;
 
    		// mengambil data dari table barang sesuai pencarian data
		$data_barang = DB::table('barang')
		->where('nama_barang','like',"%".$cari."%") 
		->paginate();
 
    		// mengirim data barang ke view index
		return view('home',['data_barang' => $data_barang]);
 
	}
	 public function caris(Request $request)
    {
       
        $filterkategori = $request->filterkategori;
        $filtermerk = $request->filtermerk;
       
       

        $data_barang = Barang::where('id_kategori', [$filterkategori])->latest()->paginate(5);
        $barang = Barang::where('id_merk', [$filtermerk])->latest()->paginate(5);
        
        return view('home', compact('data_barang','barang', 'filterkategori','filtermerk'))->with('i', (request()->input('page', 1) - 1) * 5);
        // return view('laporans.index');
       }
       public function detail($id)
       {
       	$barang = Barang::find($id);
       	return view('detail',['barang' => $barang]);
       }
       public function tambahcart($id)
       {
        $barang = Barang::find($id);
        return view('tambahcart',['barang' => $barang]);
       }
 }

 
    
