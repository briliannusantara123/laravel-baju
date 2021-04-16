<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta name="csrf-token" content="{{ csrf_token() }}">
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title></title>

  <!-- General CSS Files -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.6/css/responsive.dataTables.min.css"/>

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.bootstrap4.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/css/iziToast.css"
        integrity="sha256-pODNVtK3uOhL8FUNWWvFQK0QoQoV3YA9wGGng6mbZ0E=" crossorigin="anonymous" />
        <script type="text/javascript" src="jquery.js"></script>

  

  <!-- CSS Libraries -->

  <!-- Template CSS -->
  <link rel="stylesheet" href="../assets/css/style.css">
  <link rel="stylesheet" href="../assets/css/components.css">
	<style type="text/css">
   
</style>
</head>
<body>
<div class="main">
    <div class="main-content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="panel">
                <div class="panel-heading">
                  <section class="section">
          <div class="section-header">
            <h1 style="text-align: center;margin-top: 20px;">Keranjang Belanja</h1>
          </div>

        </section>
                  <div class="section-body">
                    <div class="row">
                      
                        
       
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
                    <form method="POST" action="/tambahcart/create" enctype="multipart/form-data">
                        @csrf
 
                         <div class="form-group">
                                <label for="exampleInputEmail1">Merk</label>
                                <input name="id_merk" value="{{$barang->id_merk}}" type="text" class="form-control" aria-describedby="emailHelp" id="id_merk" readonly="">

                              </div>
                               <div class="form-group">
                                <label for="exampleInputEmail1">Kategori</label>
                                <input name="id_kategori" value="{{$barang->id_kategori}}" type="text" class="form-control" aria-describedby="emailHelp" id="id_kategori" readonly="">

                              </div>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Nama Barang</label>
                                <input name="nama_barang" value="{{$barang->nama_barang}}" type="text" class="form-control" aria-describedby="emailHelp"id="nama_barang" readonly="" id="">
                              </div>
                              
                              <div class="form-group">
                                <label for="exampleInputEmail1">Harga Barang</label>
                                <input name="harga_jual" value="{{$barang->harga_jual}}" type="text" class="form-control" id="paket" aria-describedby="emailHelp" readonly="">
                              </div>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Banyak Beli</label>
                                <input name="jumlah_beli"type="text" class="form-control" id="berat" aria-describedby="emailHelp"onkeyup="suma();">
                              </div>
                              <div class="form-group">
                               <label>Total Harga</label>
                                    <input type ="number" class="form-control" name="total" id= "total" readonly>
                              </div>
                               <div class="form-group">
                                <h3 style="text-align: center;margin-top: 20px;">Sebelum Memesan</h3><br>
                                <h3 style="text-align: center;margin-top: 2px;">Isi Data Terlebih Dahulu</h3>
                              </div>
                              
                              <div class="form-group">
                                <label for="exampleInputEmail1">Nama Pembeli</label>
                                <input class="billing-address-name form-control" type="text" name="name"value="{{auth()->user()->name}}" readonly>
                              </div>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Nama Penerima</label>
                                <input class="billing-address-name form-control" type="text" name="nama_penerima">
                              </div>
                              <div class="form-group">
                                <label for="exampleInputEmail1">No Telepon</label>
                                <input class="form-control" name="phone" type="text" placeholder="Mobile number">
                              </div>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Alamat</label><br>
                                <textarea name="address" style="width: 100%;"></textarea>
                              </div>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Tempat Pengiriman</label>
                                <select class="form-control option-w3ls" style="width: 100%; height: 50px;" name="typeaddress">
                                              <option>Office</option>
                                              <option>Home</option>
                                              <option>Commercial</option>
              
                                          </select>
                          
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
<script type="text/javascript">
function suma(){
            var FirstNumberValue = document.getElementById('paket').value;
            var SecondNumberValue = document.getElementById('berat').value;
            var result = SecondNumberValue*FirstNumberValue ;
            document.getElementById('total'). value= result;
        }</script>
   
 
<script>
jQuery(document).ready(function(){
 
    jQuery('select').change(function(){
      let harga = jQuery(this).find(':selected').data('harga');
      
        jQuery('#berat').keyup(function(){
            let berat = jQuery('#berat').val()

            let total = parseInt(harga) * parseInt(berat)
            if (harga == "kosong") {
                total = ""
            }
 
            if (berat == "") {
                total = ""
            }
 
            console.log(total);
            if(!isNaN(total)){
                jQuery('#total').val(total)
            }
      })
  })
});
</script>
</body>
</html>
