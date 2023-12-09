@extends('layout')
@section('content')
<section id="cart_items">
    <div class="breadcrumbs">
        <ol class="breadcrumb">
          <li><a href="{{route('trang-chu')}}">Trang chủ</a></li>
          <li class="active">Thanh toán</li>
        </ol>
    </div>

       
        <div class="register-req">
            <p>Đăng ký hoặc đăng nhập để thanh toán và xem lại lịch sử mua hàng</p>
        </div><!--/register-req-->

        <div class="shopper-informations">
            <div class="row">
                <div class="col-sm-16 clearfix">
                    <div class="bill-to">
                        <p>Điền thông tin thanh toán</p>
                        <div class="form-one">
                            <form action="{{URL::to('/save-checkout-customer')}}">
                                {{ csrf_field()}}
                                <input type="text" name="shipping_name" placeholder="Họ Tên *">
                                <input type="text" name="shipping_email" placeholder="Email *">
                                <input type="text" name="shipping_phone" placeholder="Số điện thoại *">
                                <input type="text" name="shipping_address" placeholder="Địa chỉ *">
                                <textarea name="shipping_notes"  placeholder="Ghi chú đơn hàng của bạn" rows="16"></textarea>
                                <input type = "submit" value= "Gửi" name ="send_order" class ="btn btn-primary btn-small">
                            </form>
                        </div>
                    </div>
                </div>				
            </div>
        </div>
        <div class="review-payment">
            <h2>Xem lại giỏ hàng</h2>
        </div>
        <div class="payment-options">
                <span>
                    <label><input type="checkbox"> Direct Bank Transfer</label>
                </span>
                <span>
                    <label><input type="checkbox"> Check Payment</label>
                </span>
                <span>
                    <label><input type="checkbox"> Paypal</label>
                </span>
            </div>
    </div>
</section> <!--/#cart_items-->


@endsection