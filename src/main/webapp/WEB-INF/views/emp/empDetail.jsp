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
					
					<form>
				<!-- Content wrapper -->
					<h3>${vo.empName}&nbsp;${vo.positionName}의 상세페이지</h3>
					<div class="card shadow mb-4" style="align-items: center;">
								
							<div style="width:75%; margin-bottom: 30px;">
							<div style="width: 70%; margin-top: 20px; margin-bottom: 20px; margin-left:10px; float: left;">
								
									<div class="mb-3">
									  	<input type="radio" name="important" id="important" value="1"><span>중요</span>
									  	<input type="radio" name="important" id="important" value="0" checked="checked"><span>일반</span>
									  </div>
			        				  <div class="mb-3">
									    <label for="title" class="form-label">Title</label>
									    <input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요.">
									  </div>
			        				  <div class="mb-3">
									    <label for="username" class="form-label">Writer</label>
									    <input type="text" class="form-control" id="empName" value="${vo.empName}" readonly="readonly">
									  </div>
									 <div class="mb-3">
									    <label for="contents" class="form-label">Contents</label>
									    <textarea class="form-control" name="contents" id="contents" placeholder="내용을 입력하세요."></textarea>
									  </div>
									  <div class="mb-3">
									    <input type="file" class="form-control" name="files">
									  </div>
									  <div class="mb-3">
									    <input type="file" class="form-control" name="files">
									  </div>							
							</div>
							<br>

						</div>
				</div>
				
				<!-- Content wrapper -->
				<c:if test="${user.positionNo == 1}">
					<a href="/emp/empUpdate?username=${vo.username}" class="btn btn-primary" style="float: right;">수정</a>
				</c:if>
				
				</form>
			</div>
			<!-- / Layout page -->
		</div>
		<!-- Overlay -->
		<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	</div>
</div>	
	<!-- / Layout wrapper -->
	<c:import url="/WEB-INF/views/layout/footjs.jsp"></c:import>

</body>
</html>