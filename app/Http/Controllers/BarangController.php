<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Barang;
use App\Gender;
use App\Jenispakaian;
use App\Kategori;
use App\Merk;
use App\Subkategori;
use App\Supplier;
use Image;

class BarangController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $list_barang = Barang::all();
        $gender = Gender::all();
        $jenispakaian = Jenispakaian::all();
        $kategori = Kategori::all();
        $merk = Merk::all();
        $subkategori = Subkategori::all();
        $supplier = Supplier::all();
        
        if($request->ajax()){
            return datatables()->of($list_barang)
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

        return view('barang',['list_barang' => $list_barang,'kategori' => $kategori,'gender' => $gender, 'jenispakaian' => $jenispakaian, 'subkategori' => $subkategori,'supplier' => $supplier,'merk' => $merk]);

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
        
        $post   =   Barang::updateOrCreate(['id' => $id],
                    [
                       'kode_barang' => $request->kode_barang,
                        'kod_bar' => $request->kod_bar,
                        'nama_barang' => $request->nama_barang,
                        'id_merk' => $request->id_merk,
                        'id_kategori' => $request->id_kategori,
                        'id_supplier' => $request->id_supplier,
                        'id_sub_kategori' => $request->id_sub_kategori,
                        'id_gender' => $request->id_gender,
                        'id_jenis_pakaian' => $request->id_jenis_pakaian,
                        'posisi_barang' => $request->posisi_barang,
                        'harga_jual' => $request->harga_jual,
                        'stok_barang' => $request->stok_barang,
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
        $post  = Barang::where($where)->first();
     
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
        $post = Barang::where('id',$id)->delete();
     
        return response()->json($post);
    }
   public function create (){
     $list_barang = Barang::all();
        $gender = Gender::all();
        $jenispakaian = Jenispakaian::all();
        $kategori = Kategori::all();
        $merk = Merk::all();
        $subkategori = Subkategori::all();
        $supplier = Supplier::all();
     return view('barang.create',['list_barang' => $list_barang,'kategori' => $kategori,'gender' => $gender, 'jenispakaian' => $jenispakaian, 'subkategori' => $subkategori,'supplier' => $supplier,'merk' => $merk])->with('sukses','data berhasil disimpan');
   }
   public function stores(Request $request)
   {
    

       
         $this->validate($request, [
                        'kode_barang' => 'required',
                        'kod_bar' => 'required',
                        'nama_barang' => 'required',
                        'id_merk' => 'required',
                        'id_kategori' => 'required',
                        'id_supplier' => 'required',
                        'id_sub_kategori' => 'required',
                        'id_gender' => 'required',
                        'id_jenis_pakaian' => 'required',
                        'posisi_barang' => 'required',
                        'harga_jual' => 'required',
                        'stok_barang' => 'required',
                        'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
                        'image2' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
                        'image3' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);

        $image = $request->file('image');
        $image2 = $request->file('image2');
        $image3 = $request->file('image3');
        $new_image = time().$image->getClientOriginalName();
        $new_image2 = time().$image2->getClientOriginalName();
        $new_image3 = time().$image3->getClientOriginalName();
       

        $barang = Barang::create([
                        'kode_barang' => $request->kode_barang,
                        'kod_bar' => $request->kod_bar,
                        'nama_barang' => $request->nama_barang,
                        'id_merk' => $request->id_merk,
                        'id_kategori' => $request->id_kategori,
                        'id_supplier' => $request->id_supplier,
                        'id_sub_kategori' => $request->id_sub_kategori,
                        'id_gender' => $request->id_gender,
                        'id_jenis_pakaian' => $request->id_jenis_pakaian,
                        'posisi_barang' => $request->posisi_barang,
                        'harga_jual' => $request->harga_jual,
                        'stok_barang' => $request->stok_barang,
                        'image' => 'storage/'.$new_image,
                        'image2' => 'storage/'.$new_image2,
                        'image3' => 'storage/'.$new_image3
        ]);


        $image->move('storage/', $new_image);
        $image2->move('storage/', $new_image2);
        $image3->move('storage/', $new_image3);
        $image_resize = Image::make(public_path().'/storage/'.$new_image);
        $image_resize->fit(600, 600);
        $image_resize->save(public_path('storage/' .$new_image));
        $image_resize = Image::make(public_path().'/storage/'.$new_image2);
        $image_resize->fit(600, 600);
        $image_resize->save(public_path('storage/' .$new_image2));
        $image_resize = Image::make(public_path().'/storage/'.$new_image3);
        $image_resize->fit(600, 600);
        $image_resize->save(public_path('storage/' .$new_image3));
        return redirect()->back()->with('success','Foto anda berhasil disimpan'); 
   }
}
