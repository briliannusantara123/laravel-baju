<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaksi;
use App\Barang;
use App\Histori;

class TransaksiController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $list_transaksi = Transaksi::all();
        $barang = Barang::all();
         $kod_bar = Barang::all();
        if($request->ajax()){
            return datatables()->of($list_transaksi)
                        ->addColumn('action', function($data){
                            $button = '<a href="javascript:void(0)" data-toggle="tooltip"  data-id="'.$data->id.'" data-original-title="Edit" class="edit btn btn-info btn-sm edit-post"><i class="far fa-edit"></i> Edit</a>';
                            $button .= '&nbsp;&nbsp;';
                            $button .= '<button type="button" name="delete" id="'.$data->id.'" class="delete btn btn-danger btn-sm"><i class="far fa-trash-alt"></i> Delete</button>';     
                            return $button;
                        })
                        ->rawColumns(['action'])
                        ->addIndexColumn()
                        ->make(true);
        }

        return view('transaksi',['list_transaksi' => $list_transaksi, 'barang' => $barang, 'kod_bar' => $kod_bar]);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $id = $request->id;

        
        $post   =   Transaksi::updateOrCreate(['id' => $id],
                    [
                        'nama_barang' => $request->nama_barang,
                        'jumlah_beli' => $request->jumlah_beli,
                        'total' => $request->total,
                        'kod_bar' => $request->kod_bar,
                        
                    ]); 


        $histori = new \App\Histori;
        $histori->nama_barang= $request->kod_bar;
        $histori->jumlah_beli= $request->jumlah_beli;
        $histori->total= $request->total;
        $histori->save();
         
        return response()->json($post);
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $where = array('id' => $id);
        $post  = Transaksi::where($where)->first();
     
        return response()->json($post);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Transaksi::where('id',$id)->delete();
     
        return response()->json($post);
    }
     public function create(Request $request)
    {
        \App\Transaksi::create($request->all());
        return redirect('/transaksi')->with('sukses','data berhasil disimpan');
    }
}
