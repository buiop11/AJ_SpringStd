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
    <!-- forgot password  -->
    <!-- ============================================================== -->
    <div class="splash-container">
        <div class="card">
            <div class="card-header text-center"><img class="logo-img" src="/bootstrap/concept-master/assets/images/logo.png" alt="logo"><span class="splash-description">Please enter your user information.</span></div>
            <div class="card-body">
                <form>
                    <p>걱정마, 우리가 임시비밀번호를 네 이메일로 쏴줄게!</p>
                    <div class="form-group">
                        <input class="form-control form-control-lg" type="email" name="email" required="" placeholder="Your Email" autocomplete="off">
                    </div>
                    <div class="form-group pt-1"><a class="btn btn-block btn-primary btn-xl" href="../index.html">Reset Password</a></div>
                </form>
            </div>
            <div class="card-footer text-center">
                <span>아직 회원이 아니세요? <a href="/signUp">회원가입</a></span>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end forgot password  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="/bootstrap/concept-master/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="/bootstrap/concept-master/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>


 
</body>

</html>