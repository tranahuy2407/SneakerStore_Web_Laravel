@extends('layout')
@section('content')
<section id="cart_items">
    <div class="breadcrumbs">
        <ol class="breadcrumb">
          <li><a href="{{route('trang-chu')}}">Trang chủ</a></li>
          <li class="active">Thanh toán giỏ hàng</li>
        </ol>
    </div>
    
        <div class="review-payment">
            <h2>Xem lại giỏ hàng</h2>
        </div>
        <div class="table-responsive cart_info">
            <table class="table table-condensed">
                <?php 
                $content = Cart::content();
                ?>
                <thead>
                    <tr class="cart_menu">
                        <td class="image">Hình ảnh</td>
                        <td class="description">Tên</td>
                        <td class="price">Giá</td>
                        <td class="quantity">Số lượng</td>
                        <td class="total">Tổng cộng</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                    @foreach($content as $key => $v_content)
                    <tr>
                        <td class="cart_product">
                            <a href=""><img src="{{URL::to('uploads/products/'.$v_content->options->size)}}" alt="" width="50"></a>
                        </td>
                        <td class="cart_description">
                            <h4><a>{{$v_content->name}}</a></h4>
                            <p>{{'Size '.$v_content->weight}}</p>
                        </td>
                        <td class="cart_price">
                            <p>{{number_format($v_content->price).' VNĐ'}}</p>
                        </td>
                        <td class="cart_quantity">
                            <div class="cart_quantity_button">
                                <form action="{{URL::to('/update-cart-quantity')}}" method="post" enctype="multipart/form-data">
                                    {{csrf_field()}}
                                <input class="cart_quantity_input" type="text" name="quantity" value="{{$v_content->qty}}" size="2">
                                <input type = "hidden" value= "{{$v_content->rowId}}"name ="rowId_cart" class ="form-control">
                               <input type = "submit" value= "Cập nhật" name ="update_qty" class ="btn btn-default btn-small">
                            </form>
                            </div>
                        </td>
                        <td class="cart_total">
                            <p class="cart_total_price">
                                <?php
                                $subtotal = $v_content->price*$v_content->qty;
                                echo number_format($subtotal).' '.'VNĐ'
                                ?>
                            </p>
                        </td>
                        <td class="cart_delete">
                            <a class="cart_quantity_delete" href="{{URL::to('/delete-to-cart/'.$v_content->rowId)}}"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <h4 style="margin:40px 0;font-size:20px; ">Chọn hình thức thanh toán</h4>
        <form method="post" action="{{URL::to('/order-place')}}">
            {{csrf_field()}}
        <div class="payment-options">
                <span>
                    <label><input name="payment_option" value="1" type="checkbox">Thanh toán bằng ATM</label>
                </span>
                <span>
                    <label><input name="payment_option" value ="2" type="checkbox">Thanh toán bằng tiền mặt</label>
                </span>
                <span>
                    <label><input name="payment_option" value ="3" type="checkbox">Thanh toán thẻ ghi nợ</label>
                </span> 
                <input type="submit" value="Đặt hàng" name ="send_order_place" class="btn btn-primary btn-sm"/>
        </div>
        </form>
    </div>
</section> <!--/#cart_items-->


@endsection