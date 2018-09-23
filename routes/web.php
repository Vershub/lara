<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', ['as'=>'home', function(){
    return view('welcome');
}]);

//routes 228 lol
//Route::get('/core', ['uses'=>'CoreController@user', 'as'=>'core']);

//Route::resource('/page', 'Admin\CoreResource', ['only'=>['index','show']]);

//Route::match(['get', 'post'], '/contact/{name?}',['uses' =>'Admin\ContactController@show', 'as' => 'contact']);

//Route::get('/about', ['uses'=>'AboutController@show', 'as'=>'about']);



//Route::get('/pages', 'PagesController', ['getIndex'=>'pages.index']);
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
