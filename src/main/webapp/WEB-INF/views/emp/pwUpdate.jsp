<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jsp에서 properties 메세지를 사용할 수 있도록 하는 API -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/layout/headCSS.jsp"></c:import>
</head>
<body id="page-top">
	    <!-- Page Wrapper -->
	    <div id="wrapper">
	    	<!-- sidebar -->
	    	<%-- <c:import url="/WEB-INF/views/layout/sidebar.jsp"></c:import> --%>
	    	
	    	<div id="content-wrapper" class="d-flex flex-column">
	    		<div id="content">
	    		
	    		<%-- <c:import url="/WEB-INF/views/layout/topbar.jsp"></c:import> --%>
	    		
		    		<div class="container-fluid" style="margin-top: 50px;">
		    				<!-- Content -->
						<sec:authentication property="Principal" var="user"/>
						    <div class="container-xxl">
						      <div class="authentication-wrapper authentication-basic container-p-y">
						        <div class="authentication-inner">
						          <!-- Register -->
						          <div class="card">
						            <div class="card-body">
						              <!-- Logo -->
						              <div class="app-brand justify-content-center">
						                <a href="#" class="app-brand-link gap-2">
						                  <img alt="" src="/resources/images/jisun3.png" style="width: 40px;" height="40px;">
						                  <span class="app-brand-text demo text-body fw-bolder">Animal Hospital</span>
						                </a>
						              </div>
						              <!-- /Logo -->
						              <h4 class="mb-2">비밀번호를 변경해주세요.🔐</h4>
						              <p class="mb-4">Please change your password!</p>
										<div>
											<form action="pwUpdate" method="post">
											<input type="hidden" name="username" value="${user.username}">
											<input type="hidden" name="randomPw" value="${user.randomPw}">
											 	<table>
													<tr>
														<td>변경 전 비밀번호</td>
													 	<td><input type="password" name="originalPassword"></td>
												 	</tr>
												 	<tr>
														<td>변경 할 비밀번호</td>
													 	<td><input type="password" name="password"></td>
												 	</tr>
												 	<tr>
														<td>비밀번호 확인</td>
													 	<td><input type="password" name="passwordCheck"></td>
												 	</tr>
											 	</table>

											  <br><br>			  			  				  				          													  	  				  			  				  				          		
											  <button type="submit" class="btn btn-primary" style="margin-top: 30px;">완료</button>
							        		</form>
										</div>
						
						            </div>
						          </div>
						          <!-- /Register -->
						        </div>
						      </div>
						    </div>
						
						    <!-- / Content -->
		    		</div>   		
	    		
	    		</div>	    		

	    	</div>
	    </div>  
	<c:import url="/WEB-INF/views/layout/footjs.jsp"></c:import>
</body>
</html>