<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jsp에서 properties 메세지를 사용할 수 있도록 하는 API -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- 날짜포맷 라이브러리 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="dayoffStartDate" value="${approvalVO.dayoffStartDate}"/>
<c:set var="dayoffEndDate" value="${approvalVO.dayoffEndDate}"/>
<c:set var="dayoffKind" value="${approvalVO.dayoffKind}"/>

<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="/assets/"
	data-template="vertical-menu-template-free">
<head>
<c:import url="/WEB-INF/views/layout/headCSS.jsp"></c:import>
</head>
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
			<sec:authentication property="Principal" var="user"/>
				<c:import url="/WEB-INF/views/layout/topbar.jsp"></c:import>
				<!-- Content wrapper -->
				<div class="content-wrapper">	
					<!-- Content -->
					<!-- 내용부분-->
					<div class="container-xxl flex-grow-1 container-p-y">
                    <div class="card shadow mb-4">
                    <div class="card-body">
                    <div class="table-responsive">
                    
                 	<table class="table">
	
				    <tr>
				        <th class="text-center" style="width: 100px;">제목</th>
				        <td>${approvalVO.apTitle}</td>
				    </tr>
	
				    <tr>
				        <th class="text-center" style="width: 100px;">작성일</th>
				        <td>${approvalVO.apCDate}</td>
				    </tr>
			 
					</table>
					
					<input type="hidden" id="apNo" name="apNo" value="${approvalVO.apNo}">
					<input type="hidden" id="apKind" name="apKind" value="${approvalVO.apKind}">
					<input type="hidden" name="username" id="username" value="${user.username}">
					
					<p align="center" style="margin: 0px 0px 10px;line-height: 107%;font-size:10pt;font-family:맑은 고딕;text-align:center">
						<span style="font-family:나눔고딕">&nbsp;</span>
					</p>
					<table border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border: none; width: 616px; height: 850px;" class="">
						<tbody>
							<tr style="">
								<td style="border: 1px solid black; padding: 0px 7px; height: 849px; width: 617px; vertical-align: top;">
									<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
										<span style="font-family:나눔고딕">&nbsp;</span>
									</p>
									<table border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border: none; width: 602px; height: 132px;" class="">
										<tbody>
											<tr style="">
												<td rowspan="3" style="border-top: none; border-bottom: none; border-left: none; border-image: initial; border-right: 1px solid black; padding: 0px 7px; height: 132px; width: 259px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<b>
															<span style="font-size:22.0pt;font-family:맑은 고딕; font-family:맑은 고딕;font-family:맑은 고딕;bidi-font-family: 맑은 고딕">휴 가 신 청 서</span>
														</b>
														<b>
															<span style="font-size:22.0pt;font-family:나눔스퀘어_ac ExtraBold"></span>
														</b>
													</p>
												</td>
												<td rowspan="3" style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 132px; width: 20px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="bidi-font-size:10.0pt;font-family:나눔고딕">결</span>
													</p>
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="bidi-font-size:10.0pt;font-family:나눔고딕">&nbsp;</span>
													</p>
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="bidi-font-size:10.0pt;font-family:나눔고딕">재</span>
													</p>
												</td>
												<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 25px; width: 81px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">기 안 자</span>
													</p>
												</td>
												<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 25px; width: 89px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
													</p>
												</td>
												<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 25px; width: 85px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
													</p>
												</td>
											</tr>
											<tr style="">
												<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 81px; width: 81px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
													</p>
												</td>
												<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 81px; width: 89px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
													</p>
												</td>
												<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 81px; width: 85px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
													</p>
												</td>
											</tr>
											<tr style="">
												<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; height: 26px; width: 81px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
														<fmt:formatDate pattern="yyyy/MM/dd" value="${approvalVO.apCDate}"/>
													</p>
												</td>
												<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; height: 26px; width: 89px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
													</p>
												</td>
												<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; height: 26px; width: 85px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
													</p>
												</td>
											</tr>
										</tbody>
									</table>
									<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
										<span style="font-family:나눔고딕">&nbsp;</span>
									</p>
									<table border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border: none; width: 602px; height: 459px;" class="">
										<tbody>
											<tr style="">
												<td style="border: 1px solid black; background: rgb(208, 206, 206); padding: 0px 7px; height: 27px; width: 75px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">부 
															<span style="spacerun:yes">&nbsp;</span>
															<span style="spacerun:yes">&nbsp;</span>서
														</span>
													</p>
												</td>
												<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; padding: 0px 7px; height: 27px; width: 194px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
														${approvalVO.deptName}
													</p>
												</td>
												<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 27px; width: 88px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">직 
															<span style="spacerun:yes">&nbsp;</span>
															<span style="spacerun:yes">&nbsp;</span>급
														</span>
													</p>
												</td>
												<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; padding: 0px 7px; height: 27px; width: 198px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
														${approvalVO.positionName}
													</p>
												</td>
											</tr>
											<tr style="">
												<td style="border-right: 1px solid black; border-bottom: 1px solid black; border-left: 1px solid black; border-image: initial; border-top: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 27px; width: 75px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">성 
															<span style="spacerun:yes">&nbsp;</span>
															<span style="spacerun:yes">&nbsp;</span>명
														</span>
													</p>
												</td>
												<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 27px; width: 194px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
														${approvalVO.empName}
													</p>
												</td>
												<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; background: rgb(208, 206, 206); padding: 0px 7px; height: 27px; width: 88px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">기안일자</span>
													</p>
												</td>
												<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 27px; width: 198px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
														${approvalVO.apCDate}
													</p>
												</td>
											</tr>
											<tr style="">
												<td style="border-right: 1px solid black; border-bottom: 1px solid black; border-left: 1px solid black; border-image: initial; border-top: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 27px; width: 75px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">제 
															<span style="spacerun:yes">&nbsp;&nbsp;</span>목
														</span>
													</p>
												</td>
												<td colspan="3" style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 27px; width: 496px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
														${approvalVO.apTitle}
													</p>
												</td>
											</tr>
											<tr style="">
												<td style="border-right: 1px solid black; border-bottom: 1px solid black; border-left: 1px solid black; border-image: initial; border-top: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 27px; width: 75px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">구 
															<span style="spacerun:yes">&nbsp;</span>
															<span style="spacerun:yes">&nbsp;</span>분
														</span>
													</p>
												</td>
												<td colspan="3" style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 27px; width: 496px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕"></span>
														${approvalVO.dayoffKind}
													</p>
												</td>
											</tr>
											<tr style="">
												<td style="border-right: 1px solid black; border-bottom: 1px solid black; border-left: 1px solid black; border-image: initial; border-top: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 59px; width: 75px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">일 
															<span style="spacerun:yes">&nbsp;</span>
															<span style="spacerun:yes">&nbsp;</span>시
														</span>
													</p>
												</td>
												<td colspan="3" style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 59px; width: 496px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
														<input type="hidden" id="dayoffStartDate" name="dayoffStartDate" value="${approvalVO.dayoffStartDate}">
														<input type="hidden" id="dayoffEndDate" name="dayoffEndDate" value="${approvalVO.dayoffEndDate}">

														<c:choose>
															<c:when test="${dayoffKind eq '반차'}">
																${approvalVO.dayoffStartDate} [${approvalVO.dayoffTime}] &nbsp;&nbsp;총 0.5일
															</c:when>
															
															<c:when test="${dayoffKind eq '연차' || '병가' || '경조사' || '기타'}">
																<c:choose>
																	<c:when test="${dayoffEndDate eq null}">
																		${approvalVO.dayoffStartDate}&nbsp;&nbsp;총 1일
																	</c:when>
	
																	<c:when test="${dayoffEndDate ne null}">
																		${approvalVO.dayoffStartDate} ~ ${approvalVO.dayoffEndDate}
																		&nbsp;&nbsp;
																		총 ${day}일
																	</c:when>
																</c:choose>
															</c:when>
														</c:choose>
													</p>
												</td>
											</tr>
											<tr style="">
												<td style="border-right: 1px solid black; border-bottom: 1px solid black; border-left: 1px solid black; border-image: initial; border-top: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 291px; width: 75px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">내 
															<span style="spacerun:yes">&nbsp;</span>용
														</span>
													</p>
												</td>
												<td colspan="3" style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 291px; width: 496px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<sub>
															<span style="font-family:나눔고딕">&nbsp;</span>
															${approvalVO.apContents}
														</sub>
													</p>
												</td>
											</tr>
										</tbody>
									</table>
									<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
										<span style="font-family:나눔고딕">&nbsp;</span>
									</p>
									<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
										<span style="font-family:나눔고딕">&nbsp;</span>
									</p>
									<table border="0" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border: none; width: 602px; height: 97px;" class="">
										<tbody>
											<tr>
												<td style="padding: 0px 7px; width: 601px; height: 16px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">위와 같은 사유로 휴가를 신청 하오니 허가하여 주시기 바랍니다.</span>
													</p>
												</td>
											</tr>
											<tr>
												<td style="padding: 0px 7px; width: 601px; height: 16px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
													</p>
												</td>
											</tr>
											<tr>
												<td style="padding: 0px 7px; width: 601px; height: 16px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕"><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${approvalVO.apCDate}"/></span>
													</p>
												</td>
											</tr>
											<tr>
												<td style="padding: 0px 7px; width: 601px; height: 16px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
													</p>
												</td>
											</tr>
											<tr>
												<td style="padding: 0px 7px; width: 601px; height: 16px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">기 안 자 :
															<span style="spacerun:yes">&nbsp;&nbsp;&nbsp; ${approvalVO.empName}</span>
															<span style="spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>(인)
														</span>
													</p>
												</td>
											</tr>
											<tr>
												<td style="padding: 0px 7px; width: 601px; height: 16px;">
													<p align="center" style="margin: 0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height: normal">
														<span style="font-family:나눔고딕">&nbsp;</span>
													</p>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
					<p align="center" style="margin: 0px 0px 10px;line-height: 107%;font-size:10pt;font-family:맑은 고딕;text-align:center">
						<span style="font-family:나눔고딕">&nbsp;</span>
					</p>

					</div>
					</div>
					</div>
						<div class="row" style="float:right;">
							<div class="demo-inline-spacing">
								<button type="button" class="btn btn-primary submitBtn" id="updateBtn" data-url="update">수정</button>
								<button type="button" class="btn btn-danger submitBtn" id="deleteBtn" data-url="delete">회수</button>
								<button type="button" class="btn btn-primary" id="listBtn">목록</button>
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
	<script src="/js/approval/detail.js"></script>
	<script src="/js/approval/dateFormat.js"></script>
	
</body>
</html>