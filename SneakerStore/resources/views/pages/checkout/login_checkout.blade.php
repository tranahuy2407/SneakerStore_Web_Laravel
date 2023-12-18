<!doctype html>
<html lang="en">
<head>
  <title>Đăng nhập tài khoản</title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="frontend/CSS/style.css">
</head>
<body>
<div id="stars"></div>
<div id="stars2"></div>
<div id="stars3"></div>
<div class="section">
  <div class="container">
    <div class="row full-height justify-content-center">
      <div class="col-12 text-center align-self-center py-5">
        <div class="section pb-5 pt-5 pt-sm-2 text-center">
          <h6 class="mb-0 pb-3"><span>Đăng nhập </span><span>Đăng ký</span></h6>
                <input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
                <label for="reg-log"></label>
          <div class="card-3d-wrap mx-auto">
            <div class="card-3d-wrapper">
              <div class="card-front">
                <div class="center-wrap">
                  <div class="section text-center">
                  <form class="" action="{{URL::to('/login-customer')}}" method="post">
                    {{csrf_field()}}
                    <h4 class="mb-4 pb-3">Đăng nhập tài khoản</h4>
                    <div class="form-group">
                      <input type="text" name="email_account" class="form-style" placeholder="Tài khoản"  required value = "">
                      <i class="input-icon uil uil-user"></i>
                    </div> 
                    <div class="form-group mt-2">
                      <input type="password" name = "password_account" class="form-style" placeholder="Mật khẩu" require value = "">
                      <i class="input-icon uil uil-lock-alt" id ="lock"></i>
                      <button type="submit" name="submitlogin" class="btn mt-4" name="send">Đăng nhập</button>
                    </form>
                    </div>
                    
                    <p class="mb-0 mt-4 text-center"><a href="#" class="link">Quên mật khẩu?</a></p>
                      </div>
                    </div>
                  </div>
              <div class="card-back">
                <div class="center-wrap">
                  <div class="section text-center">
                  <form class="" action="{{URL::to('/add-customer')}}" method="post">
                    {{ csrf_field() }}
                    <h4 class="mb-3 pb-3">Đăng ký</h4>
                    <div class="form-group">
                      <input type="text" class="form-style" placeholder="Họ và Tên" name="customer_name" id="name" required value="">
                      <i class="input-icon uil uil-user"></i>
                    </div> 
                    <div class="form-group mt-2">
                        <input type="email" class="form-style" placeholder="Địa chỉ email" name="customer_email" id="email" required value="">
                        <i class="input-icon uil uil-at"></i>
                    </div>
                    <div class="form-group mt-2">
                      <input type="tel" class="form-style" placeholder="Số điện thoại" name="customer_phone" id="phonenumber" required value="">
                      <i class="input-icon uil uil-phone"></i>
                    </div> 
                    <div class="form-group mt-2">
                      <input type="password" class="form-style" placeholder="Mật khẩu" name="customer_password" id="password" required value="">
                      <i class="input-icon uil uil-lock-alt"></i>
                    </div>
                    <div class="form-group mt-2">
                      <input type="password" class="form-style" placeholder="Xác nhận mật khẩu" name="customer_confirm_password" id="confirmpassword" required value="">
                      <i class="input-icon uil uil-lock-alt"></i>
                    </div>
                    <button type="submit" name="submit" class="btn mt-4">Đăng ký</button>
                    </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>
</div>
</body>
</html>