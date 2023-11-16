<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jsp에서 properties 메세지를 사용할 수 있도록 하는 API -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="/assets/"
	data-template="vertical-menu-template-free">

<head>
<c:import url="/WEB-INF/views/layout/headCSS.jsp"></c:import>
	<link href='/fullcalendar/main.css' rel='stylesheet'/>
	<script src='/fullcalendar/main.js'></script>

<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<c:import url="/WEB-INF/views/layout/sidebar.jsp"></c:import>
			<!-- Layout container -->
			<div class="layout-page">
				<c:import url="/WEB-INF/views/layout/topbar.jsp"></c:import>
				<!-- Content wrapper -->
				<div class="content-wrapper">	
					<!-- Content -->
					<!-- 내용부분-->
					<div class="container-xxl flex-grow-1 container-p-y">
					<div id="calendar" style="height=300px"> </div>				
					<sec:authentication property="Principal" var="user"/>	
						<sec:authorize access="isAuthenticated()">
							<a href="/emp/logout" class="btn btn-danger" style="">로그아웃</a>	
							<a href="/emp/pwUpdate?username=${user.username}" class="btn btn-danger" style="">비밀번호 변경</a>	
						</sec:authorize>
						
						<br><br>
						<input type="hidden" id="username" name="username" value="${user.username}">
						<input type="hidden" id="empName" name="empName" value="${user.empName}">
						<input type="hidden" id="hireDate" name="hireDate" value="${user.hireDate}">
					
						
						<div>
							<div class="col-md-6 col-lg-3 mb-3">
			                  <div class="card text-center">
			                    <div class="card-header"></div>
			                    <div class="card-body">
			                      <p class="card-text">[${user.empName}]님의 연차현황</p>
			                      <h5 class="card-title" id="dayoffCount">Special title treatment</h5>
									<c:choose>
										<c:when test="${empty att}">
											<button type="button" class="btn btn-primary mb-3" onclick="attIn()" style="width:100px;">출근</button><br>
											<button type="button" class="btn btn-primary" onclick="attOut()" style="width:100px;" disabled>퇴근</button>
					                    </c:when>
					                    <c:when test="${att.attState eq 1 and att.attOut eq null}">
											<button type="button" class="btn btn-primary mb-3" onclick="attIn()" style="width:100px;" disabled>출근</button><br>
											<button type="button" class="btn btn-primary" onclick="attOut()" style="width:100px;">퇴근</button>
						                </c:when>
						                <c:otherwise>
											<button type="button" class="btn btn-primary mb-3" onclick="attIn()" style="width:100px;" disabled>출근</button><br>
											<button type="button" class="btn btn-primary" onclick="attOut()" style="width:100px;" disabled>퇴근</button>
						                </c:otherwise>
				                    </c:choose>
			                    </div>
			                    <div class="card-footer text-muted">2 days ago</div>
			                  </div>
			                </div>
						</div>
						
						
					</div>
					<!-- / Content -->
					<c:import url="/WEB-INF/views/layout/footer.jsp"></c:import>
					<div class="content-backdrop fade"></div>
				</div>
				<!-- Content wrapper -->
			</div>
			<!-- / Layout page -->
		</div>

		<!-- Overlay -->
		<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	<!-- / Layout wrapper -->
	<c:import url="/WEB-INF/views/layout/footjs.jsp"></c:import>

	<script src="/js/attendance/attendance.js"></script>

	<script src="/js/main/schedule.js"></script>
	
	<script type="text/javascript">
	function calculateVacation() {
		  var currentYear = new Date().getFullYear();
		  var hireDate = $('#hireDate').val();
		  var yearsOfWork = currentYear - hireDate;
		  var vacationDays = calculateVacationDays(yearsOfWork);
		  $('#result').text('휴가 갯수: ' + vacationDays + '일');
		}

		function calculateVacationDays(years) {
		  if (years <= 5) {
		    return 10 + years;
		  } else if (years <= 10) {
		    return 17 + Math.floor((years - 5) / 5);
		  } else {
		    return 20;
		  }
		}

	
	$(function () {
		var hireDate = $('#hireDate').val();
		
	    $("#dayoffCount").text();
	});
	</script>

</body>
</html>