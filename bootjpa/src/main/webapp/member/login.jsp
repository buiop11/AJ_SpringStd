<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>로그인</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/bootstrap/concept-master/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/bootstrap/concept-master/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/bootstrap/concept-master/assets/libs/css/style.css">
    <link rel="stylesheet" href="/bootstrap/concept-master/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    </style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- login page  -->
    <!-- ============================================================== -->
    <div class="splash-container">
        <div class="card ">
            <div class="card-header text-center"><a href="/">
            <img class="logo-img" src="/image/apiche.jpg" alt="logo" style="width:250px; height:180px;"></a>
            <span class="splash-description">Please enter your user information.</span></div>
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="username" type="text" placeholder="Username" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <input class="form-control form-control-lg" id="password" type="password" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label class="custom-control custom-checkbox">
                            <input class="custom-control-input" type="checkbox">
                            <span class="custom-control-label">id 저장하기</span>
                        </label>
                    </div>
                    <button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
                </form>
            </div>
            <div class="card-footer bg-white p-0  ">
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="/signUp" class="footer-link">회원 가입하기</a></div>
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="/forgotPassword" class="footer-link">비밀번호 찾기</a>
                </div>
            </div>
        </div>
    </div>
  
    <!-- ============================================================== -->
    <!-- end login page  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="/bootstrap/concept-master/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="/bootstrap/concept-master/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>

 
</body>


</html>