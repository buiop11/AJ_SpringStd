<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<!DOCTYPE html>
<html>


<head>

<link href="/css/base.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- 부트스트랩 달력 / Required meta tags -->
<title>Concept - Bootstrap 4 Admin Dashboard Template</title>
<!-- Bootstrap CSS -->
<link href="bootstrap/concept-master/assets/vendor/full-calendar/css/fullcalendar.css" rel="stylesheet">
<link href="bootstrap/concept-master/assets/vendor/full-calendar/css/fullcalendar.print.css" rel="stylesheet" media="print">

</head>


<body>
<div class="dashboard-main-wrapper">

	<!-- 헤더페이지 넣기 (페이지 모듈화) / main 안에 헤더위치 (헤더랑/사이드바) -->
	<jsp:include page="/layout/bootstrap_header.jsp" flush="false" />


	<div class="dashboard-wrapper">
		<div class="container-fluid dashboard-content">

			<!-- 임의 컨텐츠 -->
			<div id="row">
		        <!-- logoWrap -->
		        <div class="logoWrap">
		            <p class="logo">
		                <a href="/">  ★★소소한 행복을 느끼는 정적이고 바른 성인샵 ★★   <!-- svg 로고 20180903수정--></a>
		            </p>
		        </div>
		        <!--//logoWrap -->
		        
				<div>메인페이지 인터셉트 찍어보기 스타트타임: ${startTime} //// 핸들링타임:
					${handlingTime}</div>
					<br> <br> <a href="/alienList"><img src="/image/apiche.jpg" /></a>
		
					<h2>원우가 요청한 웹 크롤링 처리 예제</h2>
					<a href="/mkYearBook"> 여기로 가즈아!!! </a>
			</div>

	
			<!-- 달력 -->
			<div class="row">
			     <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
			         <div class="card">
			             <div class="card-body">
			                 <div id="wrap">
			                     <div id="external-events">
			                         <h4>Draggable Events</h4>
			                         <div class="fc-event ui-draggable ui-draggable-handle">My Event 1</div>
			                         <div class="fc-event bg-secondary border-secondary ui-draggable ui-draggable-handle" style="z-index: auto; left: 0px; top: 0px;">My Event 2</div>
			                         <div class="fc-event bg-brand border-brand ui-draggable ui-draggable-handle" style="z-index: auto; left: 0px; top: 0px;">My Event 3</div>
			                         <div class="fc-event bg-info border-info ui-draggable ui-draggable-handle">My Event 4</div>
			                         <div class="fc-event bg-success border-success ui-draggable ui-draggable-handle" style="z-index: auto; left: 0px; top: 0px;">My Event 5</div>
			                         <div class="custom-control custom-checkbox">
			                             <input type="checkbox" class="custom-control-input" id="drop-remove">
			                             <label class="custom-control-label" for="drop-remove">Remove after drop</label>
			                         </div>
			                     </div>
			                     <div id="calendar" class="fc fc-unthemed fc-ltr"><div class="fc-toolbar fc-header-toolbar">
			                     <div class="fc-left"><div class="fc-button-group"><button type="button" class="fc-prev-button fc-button fc-state-default fc-corner-left" aria-label="prev"><span class="fc-icon fc-icon-left-single-arrow"></span></button><button type="button" class="fc-next-button fc-button fc-state-default fc-corner-right" aria-label="next">
			                     <span class="fc-icon fc-icon-right-single-arrow"></span></button></div>
			                     <button type="button" class="fc-today-button fc-button fc-state-default fc-corner-left fc-corner-right fc-state-disabled" disabled="">today</button></div><div class="fc-right"><div class="fc-button-group"><button type="button" class="fc-month-button fc-button fc-state-default fc-corner-left fc-state-active">month</button>
			                     <button type="button" class="fc-agendaWeek-button fc-button fc-state-default">week</button>
			                     <button type="button" class="fc-agendaDay-button fc-button fc-state-default fc-corner-right">day</button></div></div>
			                     <div class="fc-center">
			                     <h2>December 2020</h2></div><div class="fc-clear"></div></div>
			                     <div class="fc-view-container" style=""><div class="fc-view fc-month-view fc-basic-view" style=""><table class="">
			                     <thead class="fc-head"><tr><td class="fc-head-container fc-widget-header"><div class="fc-row fc-widget-header">
			                     <table class=""><thead><tr><th class="fc-day-header fc-widget-header fc-sun"><span>Sun</span></th>
			                     <th class="fc-day-header fc-widget-header fc-mon"><span>Mon</span></th>
			                     <th class="fc-day-header fc-widget-header fc-tue"><span>Tue</span></th>
			                     <th class="fc-day-header fc-widget-header fc-wed"><span>Wed</span></th>
			                     <th class="fc-day-header fc-widget-header fc-thu"><span>Thu</span></th>
			                     <th class="fc-day-header fc-widget-header fc-fri"><span>Fri</span></th>
			                     <th class="fc-day-header fc-widget-header fc-sat"><span>Sat</span></th></tr></thead></table></div></td></tr></thead>
			                     <tbody class="fc-body"><tr><td class="fc-widget-content"><div class="fc-scroller fc-day-grid-container" style="overflow: hidden; height: 875px;"><div class="fc-day-grid fc-unselectable"><div class="fc-row fc-week fc-widget-content" style="height: 145px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-other-month fc-past" data-date="2020-11-29"></td><td class="fc-day fc-widget-content fc-mon fc-other-month fc-past" data-date="2020-11-30"></td>
			                     <td class="fc-day fc-widget-content fc-tue fc-past" data-date="2020-12-01"></td>
			                     <td class="fc-day fc-widget-content fc-wed fc-past" data-date="2020-12-02"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2020-12-03"></td><td class="fc-day fc-widget-content fc-fri fc-past" data-date="2020-12-04"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2020-12-05"></td></tr>
			                     </tbody></table></div><div class="fc-content-skeleton"><table><thead><tr>
			                     <td class="fc-day-top fc-sun fc-other-month fc-past" data-date="2020-11-29">
			                     <span class="fc-day-number">29</span></td><td class="fc-day-top fc-mon fc-other-month fc-past" data-date="2020-11-30">
			                     <span class="fc-day-number">30</span></td><td class="fc-day-top fc-tue fc-past" data-date="2020-12-01">
			                     <span class="fc-day-number">1</span></td><td class="fc-day-top fc-wed fc-past" data-date="2020-12-02">
			                     <span class="fc-day-number">2</span></td><td class="fc-day-top fc-thu fc-past" data-date="2020-12-03">
			                     <span class="fc-day-number">3</span></td><td class="fc-day-top fc-fri fc-past" data-date="2020-12-04">
			                     <span class="fc-day-number">4</span></td><td class="fc-day-top fc-sat fc-past" data-date="2020-12-05">
			                     <span class="fc-day-number">5</span></td></tr></thead>
			                     <tbody><tr><td></td><td></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable">
			                     <div class="fc-content"> <span class="fc-title">My Event 5</span></div>
			                     <div class="fc-resizer fc-end-resizer"></div></a></td>
			                     <td></td><td></td><td></td><td></td></tr></tbody></table></div></div>
			                     <div class="fc-row fc-week fc-widget-content" style="height: 145px;">
			                     <div class="fc-bg"><table class=""><tbody><tr>
			                     <td class="fc-day fc-widget-content fc-sun fc-past" data-date="2020-12-06"></td>
			                     <td class="fc-day fc-widget-content fc-mon fc-past" data-date="2020-12-07"></td>
			                     <td class="fc-day fc-widget-content fc-tue fc-past" data-date="2020-12-08"></td>
			                     <td class="fc-day fc-widget-content fc-wed fc-past" data-date="2020-12-09"></td>
			                     <td class="fc-day fc-widget-content fc-thu fc-past" data-date="2020-12-10"></td>
			                     <td class="fc-day fc-widget-content fc-fri fc-past" data-date="2020-12-11"></td>
			                     <td class="fc-day fc-widget-content fc-sat fc-past" data-date="2020-12-12"></td></tr></tbody></table></div>
			                     <div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-past" data-date="2020-12-06">
			                     <span class="fc-day-number">6</span></td><td class="fc-day-top fc-mon fc-past" data-date="2020-12-07">
			                     <span class="fc-day-number">7</span></td><td class="fc-day-top fc-tue fc-past" data-date="2020-12-08">
			                     <span class="fc-day-number">8</span></td><td class="fc-day-top fc-wed fc-past" data-date="2020-12-09">
			                     <span class="fc-day-number">9</span></td><td class="fc-day-top fc-thu fc-past" data-date="2020-12-10">
			                     <span class="fc-day-number">10</span></td>
			                     <td class="fc-day-top fc-fri fc-past" data-date="2020-12-11"><span class="fc-day-number">11</span></td>
			                     <td class="fc-day-top fc-sat fc-past" data-date="2020-12-12"><span class="fc-day-number">12</span></td></tr></thead>
			                     <tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table>
			                     </div></div><div class="fc-row fc-week fc-widget-content" style="height: 145px;">
			                     <div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-past" data-date="2020-12-13"></td>
			                     <td class="fc-day fc-widget-content fc-mon fc-past" data-date="2020-12-14"></td>
			                     <td class="fc-day fc-widget-content fc-tue fc-past" data-date="2020-12-15"></td>
			                     <td class="fc-day fc-widget-content fc-wed fc-past" data-date="2020-12-16"></td>
			                     <td class="fc-day fc-widget-content fc-thu fc-past" data-date="2020-12-17"></td>
			                     <td class="fc-day fc-widget-content fc-fri fc-past" data-date="2020-12-18"></td>
			                     <td class="fc-day fc-widget-content fc-sat fc-past" data-date="2020-12-19"></td></tr>
			                     </tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-past" data-date="2020-12-13">
			                     <span class="fc-day-number">13</span></td><td class="fc-day-top fc-mon fc-past" data-date="2020-12-14">
			                     <span class="fc-day-number">14</span></td>
			                     <td class="fc-day-top fc-tue fc-past" data-date="2020-12-15"><span class="fc-day-number">15</span></td>
			                     <td class="fc-day-top fc-wed fc-past" data-date="2020-12-16"><span class="fc-day-number">16</span></td>
			                     <td class="fc-day-top fc-thu fc-past" data-date="2020-12-17"><span class="fc-day-number">17</span></td>
			                     <td class="fc-day-top fc-fri fc-past" data-date="2020-12-18"><span class="fc-day-number">18</span></td>
			                     <td class="fc-day-top fc-sat fc-past" data-date="2020-12-19"><span class="fc-day-number">19</span></td></tr>
			                     </thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table>
			                     </div></div><div class="fc-row fc-week fc-widget-content" style="height: 145px;"><div class="fc-bg">
			                     <table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-past" data-date="2020-12-20"></td>
			                     <td class="fc-day fc-widget-content fc-mon fc-past" data-date="2020-12-21"></td>
			                     <td class="fc-day fc-widget-content fc-tue fc-past" data-date="2020-12-22"></td>
			                     <td class="fc-day fc-widget-content fc-wed fc-today " data-date="2020-12-23"></td>
			                     <td class="fc-day fc-widget-content fc-thu fc-future" data-date="2020-12-24"></td>
			                     <td class="fc-day fc-widget-content fc-fri fc-future" data-date="2020-12-25"></td>
			                     <td class="fc-day fc-widget-content fc-sat fc-future" data-date="2020-12-26"></td></tr></tbody></table>
			                     </div><div class="fc-content-skeleton">
			                     <table><thead><tr><td class="fc-day-top fc-sun fc-past" data-date="2020-12-20">
			                     <span class="fc-day-number">20</span></td>
			                     <td class="fc-day-top fc-mon fc-past" data-date="2020-12-21"><span class="fc-day-number">21</span></td>
			                     <td class="fc-day-top fc-tue fc-past" data-date="2020-12-22"><span class="fc-day-number">22</span></td>
			                     <td class="fc-day-top fc-wed fc-today " data-date="2020-12-23"><span class="fc-day-number">23</span></td>
			                     <td class="fc-day-top fc-thu fc-future" data-date="2020-12-24"><span class="fc-day-number">24</span></td>
			                     <td class="fc-day-top fc-fri fc-future" data-date="2020-12-25"><span class="fc-day-number">25</span></td>
			                     <td class="fc-day-top fc-sat fc-future" data-date="2020-12-26"><span class="fc-day-number">26</span></td></tr>
			                     </thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div>
			                     <div class="fc-row fc-week fc-widget-content" style="height: 145px;"><div class="fc-bg"><table class="">
			                     <tbody><tr><td class="fc-day fc-widget-content fc-sun fc-future" data-date="2020-12-27"></td>
			                     <td class="fc-day fc-widget-content fc-mon fc-future" data-date="2020-12-28"></td>
			                     <td class="fc-day fc-widget-content fc-tue fc-future" data-date="2020-12-29"></td>
			                     <td class="fc-day fc-widget-content fc-wed fc-future" data-date="2020-12-30"></td>
			                     <td class="fc-day fc-widget-content fc-thu fc-future" data-date="2020-12-31"></td>
			                     <td class="fc-day fc-widget-content fc-fri fc-other-month fc-future" data-date="2021-01-01"></td>
			                     <td class="fc-day fc-widget-content fc-sat fc-other-month fc-future" data-date="2021-01-02"></td>
			                     </tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr>
			                     <td class="fc-day-top fc-sun fc-future" data-date="2020-12-27"><span class="fc-day-number">27</span></td>
			                     <td class="fc-day-top fc-mon fc-future" data-date="2020-12-28"><span class="fc-day-number">28</span></td>
			                     <td class="fc-day-top fc-tue fc-future" data-date="2020-12-29"><span class="fc-day-number">29</span></td>
			                     <td class="fc-day-top fc-wed fc-future" data-date="2020-12-30"><span class="fc-day-number">30</span></td>
			                     <td class="fc-day-top fc-thu fc-future" data-date="2020-12-31"><span class="fc-day-number">31</span></td>
			                     <td class="fc-day-top fc-fri fc-other-month fc-future" data-date="2021-01-01"><span class="fc-day-number">1</span></td>
			                     <td class="fc-day-top fc-sat fc-other-month fc-future" data-date="2021-01-02"><span class="fc-day-number">2</span>
			                     </td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div>
			                     </div><div class="fc-row fc-week fc-widget-content" style="height: 150px;"><div class="fc-bg"><table class="">
			                     <tbody><tr><td class="fc-day fc-widget-content fc-sun fc-other-month fc-future" data-date="2021-01-03"></td>
			                     <td class="fc-day fc-widget-content fc-mon fc-other-month fc-future" data-date="2021-01-04"></td>
			                     <td class="fc-day fc-widget-content fc-tue fc-other-month fc-future" data-date="2021-01-05"></td>
			                     <td class="fc-day fc-widget-content fc-wed fc-other-month fc-future" data-date="2021-01-06"></td>
			                     <td class="fc-day fc-widget-content fc-thu fc-other-month fc-future" data-date="2021-01-07"></td>
			                     <td class="fc-day fc-widget-content fc-fri fc-other-month fc-future" data-date="2021-01-08"></td>
			                     <td class="fc-day fc-widget-content fc-sat fc-other-month fc-future" data-date="2021-01-09"></td></tr></tbody>
			                     </table></div><div class="fc-content-skeleton"><table>
			                     <thead><tr><td class="fc-day-top fc-sun fc-other-month fc-future" data-date="2021-01-03">
			                     <span class="fc-day-number">3</span></td>
			                     <td class="fc-day-top fc-mon fc-other-month fc-future" data-date="2021-01-04">
			                     <span class="fc-day-number">4</span></td><td class="fc-day-top fc-tue fc-other-month fc-future" data-date="2021-01-05">
			                     <span class="fc-day-number">5</span></td><td class="fc-day-top fc-wed fc-other-month fc-future" data-date="2021-01-06">
			                     <span class="fc-day-number">6</span></td><td class="fc-day-top fc-thu fc-other-month fc-future" data-date="2021-01-07">
			                     <span class="fc-day-number">7</span></td><td class="fc-day-top fc-fri fc-other-month fc-future" data-date="2021-01-08">
			                     <span class="fc-day-number">8</span></td><td class="fc-day-top fc-sat fc-other-month fc-future" data-date="2021-01-09">
			                     <span class="fc-day-number">9</span></td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td>
			                     <td></td></tr></tbody></table>
			                     </div></div></div></div></td></tr></tbody></table></div></div></div>
			                     <div style="clear:both"></div>
			                 </div>
			             </div>
			         </div>
			     </div>
			 </div>

		</div> <!-- container-fluid dashboard-content -->

		<!-- footer 가져오기 -->
		<jsp:include page="/layout/bootstrap_footer.jsp" flush="false" />
		
	</div> <!-- dashboard-wrapper -->

</div> <!--dashboard-main-wrapper -->


<!-- Optional JavaScript -->
<jsp:include page="/layout/common.jsp" flush="false" />
<script src="bootstrap/concept-master/assets/vendor/full-calendar/js/moment.min.js"></script>
<script src="bootstrap/concept-master/assets/vendor/full-calendar/js/fullcalendar.js"></script>
<script src="bootstrap/concept-master/assets/vendor/full-calendar/js/jquery-ui.min.js"></script>
<script src="bootstrap/concept-master/assets/vendor/full-calendar/js/calendar.js"></script>
<script src="bootstrap/concept-master/assets/libs/js/main-js.js"></script>


</body>


</html>