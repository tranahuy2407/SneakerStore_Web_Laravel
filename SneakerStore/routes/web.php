<?php

use Illuminate\Support\Facades\Route;

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
//frontend
Route::get('/', [App\Http\Controllers\HomeController::class, 'index']);
Route::get('/trang-chu', [App\Http\Controllers\HomeController::class, 'index'])->name('trang-chu');

//backend
Route::get('/admin', [App\Http\Controllers\AdminController::class, 'index'])->name('admin');
Route::get('/dashboard', 'App\Http\Controllers\AdminController@showDashBoard');
Route::post('/admin-dashboard','App\Http\Controllers\AdminController@dashboard');
Route::post('/logout','App\Http\Controllers\AdminController@logout');


//category-Product
Route::get('/add-category-product', 'App\Http\Controllers\categoryProduct@add_category_product');
Route::get('/edit-category-product/{category_product_id}', 'App\Http\Controllers\categoryProduct@edit_category_product');
Route::get('/delete-category-product/{category_product_id}', 'App\Http\Controllers\categoryProduct@delete_category_product');
Route::get('/all-category-product', 'App\Http\Controllers\categoryProduct@all_category_product');

Route::get('/active-category-product/{category_product_id}', 'App\Http\Controllers\categoryProduct@active_category_product');
Route::get('/unactive-category-product/{category_product_id}', 'App\Http\Controllers\categoryProduct@unactive_category_product');

Route::post('/save-category-product', 'App\Http\Controllers\categoryProduct@save_category_product');
Route::post('/update-category-product/{category_product_id}', 'App\Http\Controllers\categoryProduct@update_category_product');