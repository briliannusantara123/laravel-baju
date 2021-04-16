<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Barang;

class PostController extends Controller
{
      public function index()
    {
        $post = Post::all();
        $barang = Barang::all();
        return view('post.index', compact('post','barang'));
    }
    public function create()
    {
        $post = Post::all();
        return view('post.create', compact('post'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_barang' => 'required',
            'gambar' => 'required'
        ]);

        $gambar = $request->gambar;
        $new_gambar = time().$gambar->getClientOriginalName();

        $post = Post::create([
            'nama_barang' =>  $request->nama_barang,
            'gambar' => 'public/upload/post/'.$new_gambar
        ]);


        $gambar->move('public/upload/post/', $new_gambar);
        return redirect()->back()->with('success','Foto anda berhasil disimpan'); 
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       
        $post = Post::findorfail($id);
        return view('post.edit', compact('post'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
         $this->validate($request, [
            
            'nama_barang' => 'required'
                      
         ]);

        

        $post = Post::findorfail($id);

        if ($request->hasfile('gambar')) {
            $gambar = $request->gambar;
            $new_gambar = time().$gambar->getClientOriginalName();
            $gambar->move('public/upload/post/', $new_gambar);

        $post_data = [
            
            'nama_barang' =>  $request->nama_barang,
            'gambar' => 'public/uploads/post/'.$new_gambar

        ];
        }
        else{
        $post_data = [
            
            'nama_barang' =>  $request->nama_barang
        ];
        }
    

        
        $post->update($post_data);

        
        return redirect()->route('post.index')->with('success','Foto anda berhasil diupdate'); 


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::findorfail($id);
        $post->delete();

        return redirect()->back()->with('success','Foto Berhasil Dihapus');
    }
    public function delete($id)
    {
        $post = \App\Post::find($id);
        $post->delete($post);
        return redirect()->back();
    }
}
