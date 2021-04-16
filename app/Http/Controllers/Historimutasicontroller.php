<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Historimutasi;

class Historimutasicontroller extends Controller
{
    public function index(Request $request)
    {
        $list_histori = Historimutasi::all();
      
        if($request->ajax()){
            return datatables()->of($list_histori)
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

        return view('historimutasi');

    }
}
