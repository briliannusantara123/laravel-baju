<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Payment;
use Image;

class PaymentController extends Controller
{
     public function index()
    {
    	return view('payment');
    }
    public function stores(Request $request)
   {
    

       
         $this->validate($request, [
                        'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
                        
        ]);

        $image = $request->file('image');
        $new_image = time().$image->getClientOriginalName();
       

        $payment = Payment::create([
                        'image' => 'storage/'.$new_image,
        ]);


        $image->move('storage/', $new_image);
        $image_resize = Image::make(public_path().'/storage/'.$new_image);
        $image_resize->fit(1000, 1000);
        $image_resize->save(public_path('storage/' .$new_image));
        return redirect()->back()->with('success','Foto anda berhasil disimpan'); 
   }
}
