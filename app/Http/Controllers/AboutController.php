<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class AboutController extends Controller
{
    public function show(){
        $data = array();
        $data['articles'] = DB::select("SELECT * FROM `articles`");

        if(view()->exists('default.about')){

            return view('default.about', $data);
        }



    }}