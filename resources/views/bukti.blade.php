@extends('layouts.master')
@section('content')

   <div class="main">
    <div class="main-content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="panel">
                <div class="panel-heading">
                  <section class="section">
          <div class="section-header">
            <h1>Bukti Transaksi</h1>
          </div>

        </section>
                 
          @foreach($payment as $payment)
           <img title="{{$payment->created_at}}" alt="{{ $payment->created_at->diffForHumans() }}" src="{{$payment->image}}" style="width: 400px; height: 300px;margin-left: 10px; margin-bottom: 20px;" /> 

          @endforeach
                <!-- AKHIR TABLE -->
            
    <!-- JAVASCRIPT -->
@stop