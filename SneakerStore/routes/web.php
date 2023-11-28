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