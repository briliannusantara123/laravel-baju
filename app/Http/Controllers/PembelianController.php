<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cart;

class PembelianController extends Controller
{
       public function index(Request $request)
    {
        $cart = Cart::all();
        if($request->ajax()){
            return datatables()->of($cart)
                        ->addColumn('action', function($data){
                            $button = '<a href="javascript:void(0)" data-toggle="tooltip"  data-id="'.$data->id.'" data-original-title="Ubah Status" class="edit btn btn-info btn-sm edit-post"><i class="far fa-edit"></i> Edit</a>';
                            $button .= '&nbsp;&nbsp;';
                           
                            return $button;
                        })
                        ->rawColumns(['action'])
                        ->addIndexColumn()
                        ->make(true);
        }

        return view('pembelian');

    }
    public function store(Request $request)
    {

         $id = $request->id;
        
        $post   =   Cart::updateOrCreate(['id' => $id],
                    [
                       'status' => $request->status,
                       
                    ]); 

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
        $post  = Cart::where($where)->first();
     
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
        $post = Cart::where('id',$id)->delete();
     
        return response()->json($post);
    }
}
