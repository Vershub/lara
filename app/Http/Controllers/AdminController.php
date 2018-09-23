<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;

class AdminController extends Controller{
    public function __construct()
    {
    }

    public function show(){
        $user = Auth::user;

        if(!Auth::check()){

            return redirect('login');

        }
    }
}
