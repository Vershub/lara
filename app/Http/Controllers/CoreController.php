<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Articles;
use App\User;

class CoreController extends Controller
{
    public function user(){
    $users = User::with('country')->get();
    $users = $users->toArray();
    return view('default.core', compact('users'));
   }



}
