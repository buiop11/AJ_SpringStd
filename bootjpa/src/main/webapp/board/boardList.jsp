<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<!DOCTYPE html>
<html>


<head>
	<!-- Bootstrap CSS -->
</head>


<body>
<div class="dashboard-main-wrapper">

	<!-- 헤더페이지 넣기 (페이지 모듈화) / main 안에 헤더위치 (헤더랑/사이드바) -->
	<jsp:include page="/layout/bootstrap_header.jsp" flush="false" />


	<div class="dashboard-wrapper">
		
		<div class="container-fluid dashboard-content">
		
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="page-header">
						<h2 class="pageheader-title">Data Tables</h2>
						<p class="pageheader-text">
							Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.
						</p>
						<div class="page-breadcrumb">
							<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
								<li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Tables</a></li>
								<li class="breadcrumb-item active" aria-current="page">Data Tables</li>
							</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
		
			<div class="row">
	<!-- ============================================================== -->
	<!-- basic table  -->
	<!-- ============================================================== -->
	<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
		<div class="card">
			<h5 class="card-header">Basic Table</h5>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-striped table-bordered first">
					<thead>
					<tr>
						<th>
							Name
						</th>
						<th>
							Position
						</th>
						<th>
							Office
						</th>
						<th>
							Age
						</th>
						<th>
							Start date
						</th>
						<th>
							Salary
						</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>
							Tiger Nixon
						</td>
						<td>
							System Architect
						</td>
						<td>
							Edinburgh
						</td>
						<td>
							61
						</td>
						<td>
							2011/04/25
						</td>
						<td>
							$320,800
						</td>
					</tr>
					<tr>
						<td>
							Ashton Cox
						</td>
						<td>
							Junior Technical Author
						</td>
						<td>
							San Francisco
						</td>
						<td>
							66
						</td>
						<td>
							2009/01/12
						</td>
						<td>
							$86,000
						</td>
					</tr>
					<tr>
						<td>
							Donna Snider
						</td>
						<td>
							Customer Support
						</td>
						<td>
							New York
						</td>
						<td>
							27
						</td>
						<td>
							2011/01/25
						</td>
						<td>
							$112,000
						</td>
					</tr>
					</tbody>
					<tfoot>
					<tr>
						<th>
							Name
						</th>
						<th>
							Position
						</th>
						<th>
							Office
						</th>
						<th>
							Age
						</th>
						<th>
							Start date
						</th>
						<th>
							Salary
						</th>
					</tr>
					</tfoot>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- end basic table  -->
	<!-- ============================================================== -->
</div>
		
		
		</div>
		

		<!-- footer 가져오기 -->
		<jsp:include page="/layout/bootstrap_footer.jsp" flush="false" />
		
	</div> <!-- dashboard-wrapper -->

</div> <!--dashboard-main-wrapper -->


<!-- Optional JavaScript -->
<jsp:include page="/layout/common.jsp" flush="false" />


</body>


</html>