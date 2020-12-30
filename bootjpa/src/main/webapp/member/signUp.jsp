<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
   
<html>

<head>
	<jsp:include page="/layout/bootstrap_css.jsp" flush="false" />

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
    <!-- signup form  -->
    <!-- ============================================================== -->
    <form class="splash-container" data-parsley-validate="" action="/registerMember" method="post">
        <div class="card">
            <div class="card-header">
                <h3 class="mb-1">회원가입 폼</h3>
                <p>Please enter your user information.</p>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="id" required="" placeholder="ID" autocomplete="off">
                </div>
                <div class="form-group">
                	<a href="#" class="btn btn-primary btn-block">ID 중복 확인</a>
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="email" name="email" required="" placeholder="E-mail" autocomplete="off">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="name" required="" placeholder="name" autocomplete="off">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" id="pass1" name="pwd" type="password" required="" placeholder="Password">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" required="" placeholder="Confirm">
                </div>
                <div class="form-group pt-2">
                    <button class="btn btn-block btn-primary" type="submit">회원등록 하기!</button>
                </div>
                <div class="form-group"> <!-- 회원 약관  -->
                    <label class="custom-control custom-checkbox">
                        <input class="custom-control-input" type="checkbox">
                        <span class="custom-control-label">By creating an account, you agree the 
                        <a href="#">terms and conditions</a></span>
                    </label>
                </div>
                
                <!-- ★ 네이버 / 카카오 연동 처리해보기 (member 테이블 nid, kid 만들어둠)  -->
                <div class="form-group row pt-0">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb-2">
                        <button class="btn btn-block btn-social btn-facebook " type="button">네이버</button>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <button class="btn  btn-block btn-social btn-twitter" type="button">카카오</button>
                    </div>
                </div>
            </div>
            <div class="card-footer bg-white">
                <p>이미 회원이신가요? <a href="/login" class="text-secondary">Login Here.</a></p>
            </div>
            
        </div>
    </form>
    


<!-- Optional JavaScript -->
<jsp:include page="/layout/bootstrap_js.jsp" flush="false" />

</body>


</html>