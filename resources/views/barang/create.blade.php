@extends('layouts.master')
@section('content')

<style type="text/css">
    .container  .card{
        margin-top: 15%;
        margin-left: 200px;
    }
</style>

 <div class="main">
    <div class="main-content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="panel">
                <div class="panel-heading">
                  <section class="section">
          <div class="section-header">
            <h1>Tambah Barang</h1>
          </div>

        </section>
                  <div class="section-body">
                    <div class="row">
                      <div class="col-12 col-md-6 col-lg-6">
                        
                          <a href=""value="Refresh Page" onClick="document.location.reload(true)" class="btn btn-warning">Reload</a>
                           <a href="/barang" class="btn btn-danger">Kembali</a>
                <br>

                          @if($errors->any())
                      <div class="alert alert-danger">
                        <ul>
                          @foreach($errors->all() as $error)
                            <li>{{$error}}</li>
                          @endforeach
                        </ul>
                      </div>
                      @endif
                      </div>
                    </div>
                    <br>
                   
                </div>
 
                <div class="card-body">
                    <form method="POST" action="/barang/stores" enctype="multipart/form-data">
                        @csrf
 
                         <div class="form-group">
                                <label for="exampleInputEmail1">Kode Barang</label>
                                <input name="kode_barang"type="text" class="form-control" aria-describedby="emailHelp" id="kode_barang">

                              </div>
                               <div class="form-group">
                                <label for="exampleInputEmail1">Kod Bar</label>
                                <input name="kod_bar"type="text" class="form-control" aria-describedby="emailHelp" id="kod_bar">

                              </div>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Nama Barang</label>
                                <input name="nama_barang"type="text" class="form-control" aria-describedby="emailHelp"id="nama_barang">
                              </div>
                               <div class="form-group">
                                <label for="exampleFormControlSelect1">Merk</label>
                                <select name="id_merk" class="form-control"  id="id_merk">
                                  @foreach($merk as $merk)
                                  <option value="{{$merk->nama_merk}}">{{$merk->nama_merk}}</option>
                                  @endforeach
                                </select>
                              </div>
                              <div class="form-group">
                                <label for="exampleFormControlSelect1">Kategori</label>
                                <select name="id_kategori" class="form-control"  id="id_kategori">
                                  @foreach($kategori as $kategori)
                                  <option value="{{$kategori->nama_kategori}}">{{$kategori->nama_kategori}}</option>
                                  @endforeach
                                </select>
                              </div>
                              <div class="form-group">
                                <label for="exampleFormControlSelect1">Sub Kategori</label>
                                <select name="id_sub_kategori" class="form-control"  id="id_sub_kategori">
                                  @foreach($subkategori as $subkategori)
                                  <option value="{{$subkategori->nama_sub_kategori}}">{{$subkategori->nama_sub_kategori}}</option>
                                  @endforeach
                                </select>
                              </div>
                              <div class="form-group">
                                <label for="exampleFormControlSelect1">Supplier</label>
                                <select name="id_supplier" class="form-control" id="id_supplier">
                                  @foreach($supplier as $supplier)
                                  <option value="{{$supplier->nama_supplier}}">{{$supplier->nama_supplier}}</option>
                                  @endforeach
                                </select>
                              </div>
                              <div class="form-group">
                                <label for="exampleFormControlSelect1">Gender</label>
                                <select name="id_gender" class="form-control" id="id_gender">
                                  @foreach($gender as $gender)
                                  <option value="{{$gender->nama_gender}}">{{$gender->nama_gender}}</option>
                                  @endforeach
                                </select>
                              </div>
                              <div class="form-group">
                                <label for="exampleFormControlSelect1">Jenis Pakaian</label>
                                <select name="id_jenis_pakaian" class="form-control" id="id_jenis_pakaian">
                                  @foreach($jenispakaian as $jenispakaian)
                                  <option value="{{$jenispakaian->nama_jenis_pakaian}}">{{$jenispakaian->nama_jenis_pakaian}}</option>
                                  @endforeach
                                </select>
                              </div>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Posisi Barang</label>
                                <input name="posisi_barang"type="text" class="form-control" id="posisi_barang" aria-describedby="emailHelp">
                              </div>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Harga Jual</label>
                                <input name="harga_jual"type="text" class="form-control" id="harga_jual" aria-describedby="emailHelp">
                              </div>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Stok Barang</label>
                                <input name="stok_barang"type="text" class="form-control" id="stok_barang" aria-describedby="emailHelp">
                              </div>
                              <div class="form-group">
                                <label class="col-sm-2 control-label">Gambar 1</label>
                                <div class="col-sm-12">
                                <input id="image" type="file" name="image" accept="image/*" onchange="readURL(this);">
                                <input type="hidden" name="hidden_image" id="hidden_image">
                                </div>
                                <br>
                                <div class="form-group">
                                <label class="col-sm-2 control-label">Gambar 2 </label>
                                <div class="col-sm-12">
                                <input id="image2" type="file" name="image2" accept="image/*" onchange="readURL(this);">
                                <input type="hidden" name="hidden_image" id="hidden_image">
                                </div>
                                <br>
                                <div class="form-group">
                                <label class="col-sm-2 control-label">Gambar 3</label>
                                <div class="col-sm-12">
                                <input id="image3" type="file" name="image3" accept="image/*" onchange="readURL(this);">
                                <input type="hidden" name="hidden_image" id="hidden_image">
                                </div>
                                </div>

                        <div class="form-group">
                            <button class="btn btn-primary" style="width: 100%;">Simpan</button>
                        </div>
 
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection