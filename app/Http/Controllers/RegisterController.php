<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class RegisterController extends Controller
{
    public function index()
    {
    	return view('register');
    }
    public function create(Request $request)
    {
        $user = new \App\User;
        $user->name= $request->name;
        $user->email= $request->email;
        $user->password= bcrypt($request->password);
        $user->role= "pembeli";
        $user->remember_token = bcrypt('Rahasia');
        $user->save();
        $this->validate($request,[
            'name' => 'required',
            'email' => 'required',
            'password' => 'required'
        ]);
        
        return redirect('/login')->with('sukses','data berhasil disimpan');
    }
}
