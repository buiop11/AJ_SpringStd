<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
   
<html>

<head>
	<jsp:include page="/layout/bootstrap_css.jsp" flush="false" />
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper p-0">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <nav class="navbar navbar-expand dashboard-top-header bg-white">
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- brand logo -->
                <!-- ============================================================== -->
                <div class="dashboard-nav-brand">
                    <a class="dashboard-logo" href="../index.html">Concept</a>
                </div>
                <!-- ============================================================== -->
                <!-- end brand logo -->
                <!-- ============================================================== -->
            </div>
        </nav>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="bg-light text-center">
            <div class="container">
                <div class="row">
                    <div class="offset-xl-2 col-xl-8 offset-lg-2 col-lg-8 col-md-12 col-sm-12 col-12">
                        <div class="error-section">
                            <img src="/image/angryapeach" alt="" class="img-fluid" style="width:784px; height:447px;">
                            <div class="error-section-content">
                                <h1 class="display-3">Page Not Found</h1>
                                <a href="/" class="btn btn-secondary btn-lg">홈페이지 돌아가기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        	
        	<!-- footer 가져오기 -->
			<jsp:include page="/layout/bootstrap_footer.jsp" flush="false" />
	
            <!-- ============================================================== -->
            <!-- end wrapper -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
	<jsp:include page="/layout/bootstrap_js.jsp" flush="false" />
	
 
</body>

</html>