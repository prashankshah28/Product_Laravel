<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;

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

Route::get('/', 'ProductController@category');
Route::resource('/product','ProductController');
Route::post('/product/fetchData','ProductController@fetchdata');
// Route::get('/add', function(){
//     return view('Product.add');
// });
//Route::get('/add','ProductController@category');