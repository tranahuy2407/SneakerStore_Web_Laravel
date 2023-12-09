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
//Danh muc san pham trang chu
Route::get('/danh-muc-san-pham/{category_id}','App\Http\Controllers\categoryProduct@show_category_home');
//Thuong hieu san pham trang chu
Route::get('/thuong-hieu-san-pham/{brand_id}','App\Http\Controllers\BrandProduct@show_brand_home');
//Chitietsanpham
Route::get('/chi-tiet-san-pham/{product_id}','App\Http\Controllers\ProductController@details_product');


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


//Brand-Product
Route::get('/add-brand-product', 'App\Http\Controllers\BrandProduct@add_brand_product');
Route::get('/edit-brand-product/{brand_product_id}', 'App\Http\Controllers\BrandProduct@edit_brand_product');
Route::get('/delete-brand-product/{brand_product_id}', 'App\Http\Controllers\BrandProduct@delete_brand_product');
Route::get('/all-brand-product', 'App\Http\Controllers\BrandProduct@all_brand_product');

Route::get('/active-brand-product/{brand_product_id}', 'App\Http\Controllers\BrandProduct@active_brand_product');
Route::get('/unactive-brand-product/{brand_product_id}', 'App\Http\Controllers\BrandProduct@unactive_brand_product');

Route::post('/save-brand-product', 'App\Http\Controllers\BrandProduct@save_brand_product');
Route::post('/update-brand-product/{brand_product_id}', 'App\Http\Controllers\BrandProduct@update_brand_product');

//Product
Route::get('/add-product', 'App\Http\Controllers\ProductController@add_product');
Route::get('/edit-product/{product_id}', 'App\Http\Controllers\ProductController@edit_product');
Route::get('/delete-product/{product_id}', 'App\Http\Controllers\ProductController@delete_product');
Route::get('/all-product', 'App\Http\Controllers\ProductController@all_product');

Route::get('/active-product/{product_id}', 'App\Http\Controllers\ProductController@active_product');
Route::get('/unactive-product/{product_id}', 'App\Http\Controllers\ProductController@unactive_product');

Route::post('/save-product', 'App\Http\Controllers\ProductController@save_product');
Route::post('/update-product/{product_id}', 'App\Http\Controllers\ProductController@update_product');

//cart
Route::post('/save-cart', 'App\Http\Controllers\CartController@save_cart');
Route::get('/show_cart', 'App\Http\Controllers\CartController@show_cart');
Route::get('/delete-to-cart/{rowId}', 'App\Http\Controllers\CartController@delete_to_cart');
Route::post('/update-cart-quantity', 'App\Http\Controllers\CartController@update_cart_quantity');

//check-out
Route::get('/login-checkout', 'App\Http\Controllers\CheckoutController@login_checkout');
