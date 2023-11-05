<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jsp에서 properties 메세지를 사용할 수 있도록 하는 API -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="/assets/"
	data-template="vertical-menu-template-free">
<head>
<c:import url="/WEB-INF/views/layout/headCSS.jsp"></c:import>

<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
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
					
					<form action="empUpdate" method="post" enctype="multipart/form-data">
							<h3>사원 정보 수정</h3>
					<div class="card shadow mb-4"  style="align-items: center;">										
							<div>
							<input type="hidden" name="username" value="${vo.username}">
							<input type="hidden" name="hireDate" value="${vo.hireDate}">
							<input type="hidden" name="email" value="${vo.email}">
							<input type="hidden" name="phone" value="${vo.phone}">
							<input type="hidden" name="birth" value="${vo.birth}">
								<div style="width: 300px; float: left;">
									<c:if test="${vo.originalFileName == null }">
										<img alt="" src="/resources/images/default.jpeg" style="width: 250px; height: 250px; margin: 30px;">
									</c:if>
									<c:if test="${vo.originalFileName != null }">		
										<img alt="" src="../files/emp/${vo.fileName}" style="width: 250px; height: 250px; margin: 30px;">
									</c:if>
								</div>
							<div style="width: 550px; margin-top: 20px; margin-bottom: 20px; float: left;">
								
								<table class="table" style="">
									<tr>
										<td>사번</td>
										<td id="username">
											${vo.username}
										</td>
									</tr>
									<tr>
										<td>이름</td>
										<td>
											<input type="text" class="form-control" name="empName" value="${vo.empName}" style="height: 35px;">
										</td>
									</tr>
									<tr>
										<td>부서</td>
										<td>
											<select class="form-control" name='deptNo' id="deptNo" style="height: 35px;">
												<option value="${vo.deptNo}" selected="selected">${vo.deptName}</option>										
													<c:forEach items="${dept}" var="dept">
														<option value="${dept.deptNo}">${dept.deptName}</option>
													</c:forEach>
											</select>
										</td>
									</tr>
									<tr>
										<td>직급</td>
										<td>
											<select class="form-control" name='positionNo' id="positionNo" style="height: 35px;">
												<option value="${vo.positionNo}">${vo.positionName}</option>
												<c:if test="${vo.deptNo}">												
													<c:forEach items="${po}" var="po">
														<option value="${po.positionNo}">${po.positionName}</option>
													</c:forEach>
												</c:if>
											</select>
										</td>
									</tr>
									<tr>
										<td>상태</td>
										<td>
											<select class="form-control" name='state' id="state" style="height: 35px;">
												<option value="재직" selected="selected">${vo.state}</option>
												<option value="재잭">재직</option>
												<option value="휴직">휴직</option>
												<option value="퇴사">퇴사</option>
											</select>
										</td>
									</tr>
								</table>							
							</div>
							<br>
							<div>
								<table class="table">
									<tr>
										<td>입사일</td>
										<td>
											${vo.hireDate}
										</td>
									</tr>
									<tr>
										<td>이메일</td>
										<td>
											${vo.email}
										</td>
									</tr>
									<tr>
										<td>연락처</td>
										<td>
											${vo.phone}
										</td>
									</tr>
									<tr>
										<td>생년월일</td>
										<td>
											${vo.birth}
										</td>
									</tr>
									<tr>
										<td></td>
										<td></td>
									</tr>
								</table>
							</div>
						</div>
				</div>
					<button class="btn btn-danger">수정완료</button>
			</form>							
				<!-- Content wrapper -->
			</div>
			<!-- / Layout page -->
		</div>
		<!-- Overlay -->
	</div>
</div>
</div>
		<div class="layout-overlay layout-menu-toggle"></div>
	<!-- / Layout wrapper -->
	<c:import url="/WEB-INF/views/layout/footjs.jsp"></c:import>
<script type="text/javascript">

	$(function(){
	    $('#deptNo').change(function(){
	        let selectedDeptNo = $(this).val();
	        let username = $('#username').text();
	        
	        $.ajax({
	            url: '/empUpdate?username=' + username, 
	            method: 'GET',
	            data: { deptNo: selectedDeptNo },
	            success: function(data) {
	                $('#positionNo').empty();
	                
	                for (let i = 0; i < data.length; i++) {
	                    $('#positionNo').append($('<option>', {
	                        value: data[i].positionNo,
	                        text: data[i].positionName
	                    }));
	                }
	                
	                $('#positionNo').prop('selectedIndex', 0);
	            },
	            error: function() {
	                console.log(username);
	                console.log(selectedDeptNo);
	            }
	        });
	    });
	});
</script>
</body>
</html>