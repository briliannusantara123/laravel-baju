<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mutasi;
use App\Barang;
use App\Historimutasi;

class Mutasicontroller extends Controller
{
     public function index(Request $request)
    {
        $list_mutasi = Mutasi::all();
        $barang = Barang::all();
         $kod_bar = Barang::all();
        if($request->ajax()){
            return datatables()->of($list_mutasi)
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

        return view('mutasi',['list_mutasi' => $list_mutasi, 'barang' => $barang, 'kod_bar' => $kod_bar]);

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

        
        $post   =   Mutasi::updateOrCreate(['id' => $id],
                    [
                        'nama_barang' => $request->nama_barang,
                        'jumlah' => $request->jumlah,
                    ]); 


        			    $histori = new \App\Historimutasi;
				        $histori->nama_barang= $request->nama_barang;
				        $histori->jumlah= $request->jumlah;
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
        $post  = Mutasi::where($where)->first();
     
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
        $post = Mutasi::where('id',$id)->delete();
     
        return response()->json($post);
    }
     public function create(Request $request)
    {
        \App\Mutasi::create($request->all());
        return redirect('/mutasi')->with('sukses','data berhasil disimpan');
    }
}
