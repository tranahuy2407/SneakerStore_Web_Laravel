<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Console\View\Components\Alert;

class CheckoutController extends Controller
{
    public function login_checkout(){
        $cate_product=DB::table('tbl_category_product')->where('category_status','0')->orderby('category_id','desc')->get();
        $brand_product=DB::table('tbl_brand')->where('brand_status','0')->orderby('brand_id','desc')->get();
        return view('pages.checkout.login_checkout')->with('category',$cate_product)->with('brand',$brand_product);
    }
    public function add_customer(Request $request){
        $data=array();
        $data['customer_name']=$request->customer_name;
        $data['customer_phone']=$request->customer_phone;
        $data['customer_email']=$request->customer_email;
        $data['customer_password']=md5($request->customer_password);
        if($request->customer_password==$request->customer_confirm_password){
            $customer_id = DB::table('tbl_customers')->insertGetId($data);
        Session::put('customer_id',$customer_id);
        Session::put('customer_name',$request->customer_name);
        return Redirect('/show_checkout');
        }
        else{
           echo "<script> alert('Mậu khẩu không trừng khớp!'); </script>";
          
        }
    }
    public function checkout(){
        $cate_product=DB::table('tbl_category_product')->where('category_status','0')->orderby('category_id','desc')->get();
        $brand_product=DB::table('tbl_brand')->where('brand_status','0')->orderby('brand_id','desc')->get();
        return view('pages.checkout.show_checkout')->with('category',$cate_product)->with('brand',$brand_product);
    }
    public function save_checkout_customer(Request $request){
        $data=array();
        $data['shipping_name']=$request->shipping_name;
        $data['shipping_phone']=$request->shipping_phone;
        $data['shipping_email']=$request->shipping_email;
        $data['shipping_notes']=$request->shipping_notes;
        $data['shipping_address']=$request->shipping_address;

        $shipping_id = DB::table('tbl_shipping')->insertGetId($data);
        Sesion::put('shipping_id',$shipping_id);
        return Redirect::to('/payment');
    }
    public function payment(){

    }
    public function logout_checkout(){
        Session::flush();
        return Redirect::to('/login-checkout');
    }
    public function login_customer(Request $request){
       $email = $request->email_account;
       $password = md5($request->password_account);
       $result = DB::table('tbl_customers')->where('customer_email',$email)->where('customer_password',$password)->first();
      
       if($result){
        Session::put('customer_id',$result->customer_id);
        return Redirect::to('/checkout');
       }
       else{
        return Redirect::to('/login-checkout');
       }

       
    }
}
