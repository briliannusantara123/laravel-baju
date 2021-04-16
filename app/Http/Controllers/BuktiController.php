<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Payment;

class BuktiController extends Controller
{
     public function index()
    {
    	$payment = Payment::all();
    	return view('bukti',['payment' => $payment]);
    }
}
