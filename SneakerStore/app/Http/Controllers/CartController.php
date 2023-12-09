<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();
use Gloudemans\Shoppingcart\Facades\Cart;
class CartController extends Controller
{
    public function save_cart(Request $request){
    
       $productId=$request->productid_hidden;
        $quantity=$request->qty;
        $size = $request->size;
        $product_info=DB::table('tbl_product')->where('product_id',$productId)->first();
        
        $data['id']=$product_info->product_id;
        $data['name']=$product_info->product_name;
        $data['qty']=$quantity;
        $data['price']=$product_info->product_price;
        $data['weight']= $size;
        $data['options']['size']=$product_info->product_image;
        Cart::add($data);
        return Redirect::to('/show_cart');
    }
    public function show_cart(){
        $cate_product=DB::table('tbl_category_product')->where('category_status','0')->orderby('category_id','desc')->get();
        $brand_product=DB::table('tbl_brand')->where('brand_status','0')->orderby('brand_id','desc')->get();
        return view('pages.cart.show_cart')->with('category',$cate_product)->with('brand',$brand_product);
    } 
    public function delete_to_cart($rowId){
        Cart::update($rowId,0);
        return Redirect::to('/show_cart');
        
    }
    public function update_cart_quantity(Request $request){
        $rowId=$request->rowId_cart;
        $quantity=$request->quantity;
        Cart::update($rowId,$quantity);
        return Redirect::to('/show_cart');
    }
}
