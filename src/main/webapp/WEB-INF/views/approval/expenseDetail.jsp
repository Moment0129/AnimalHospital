<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jsp에서 properties 메세지를 사용할 수 있도록 하는 API -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- 날짜포맷 라이브러리 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="/assets/"
	data-template="vertical-menu-template-free">
<head>
<c:import url="/WEB-INF/views/layout/headCSS.jsp"></c:import>

<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.expenseTable td {
		height : 29px;
	}
</style>

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
					
					<p>
						<br>
						</p>
						<table border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse; width: 617px; border: 0px solid black; background-image: none; background-repeat: repeat; background-position: 0% 0%;" class="" data-pe_b-o-c="">
							<tbody data-pe_b-o-c="">
								<tr data-pe_b-o-c="">
									<td style="border: 1px solid black; padding: 0px 7px; height: 808px; width: 616px; vertical-align: top;" data-pe_b-o-c="">
										<p style="margin:0px 0px 0px;text-align:justify;font-size:10pt;font-family:맑은 고딕;line-height:normal">
											<span style="font-family:나눔고딕">&nbsp;</span>
										</p>
										<table border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border: none; width: 601px; height: 131px;" class="">
											<tbody>
												<tr>
													<td rowspan="3" style="border-top: none; border-bottom: none; border-left: none; border-image: initial; border-right: 1px solid black; padding: 0px 7px; height: 131px; width: 258px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<b>
																<span style="font-size:23.0pt;font-family:나눔스퀘어_ac ExtraBold; bidi-font-family:맑은 고딕">지 출 결 의 서</span>
															</b>
															<b>
																<span style="font-size:23.0pt;font-family:나눔스퀘어_ac ExtraBold"></span>
															</b>
														</p>
													</td>
													<td rowspan="3" style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 131px; width: 16px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family: 나눔고딕;">결</span>
														</p>
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="bidi-font-size:10.0pt;font-family:나눔고딕">&nbsp;</span>
														</p>
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family: 나눔고딕;">재</span>
														</p>
													</td>
													<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 25px; width: 82px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">기 안 자</span>
														</p>
													</td>
													<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 25px; width: 86px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
														</p>
													</td>
													<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 25px; width: 87px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
														</p>
													</td>
												</tr>
												<tr>
													<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 80px; width: 82px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
														</p>
													</td>
													<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 80px; width: 86px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
														</p>
													</td>
													<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 80px; width: 87px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
														</p>
													</td>
												</tr>
												<tr>
													<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; height: 26px; width: 82px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
															<fmt:formatDate pattern="yyyy/MM/dd" value="${approvalVO.apCDate}"/>
														</p>
													</td>
													<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; height: 26px; width: 86px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
														</p>
													</td>
													<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; height: 26px; width: 87px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
														</p>
													</td>
												</tr>
											</tbody>
										</table>
										<p style="margin:0px 0px 0px;text-align:justify;font-size:10pt;font-family:맑은 고딕;line-height:normal">
											<span style="font-family:나눔고딕">&nbsp;</span>
										</p>
										<table border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border: none; width: 601px;" class="">
											<tbody>
												<tr>
													<td style="border: 1px solid black; background: rgb(208, 206, 206); padding: 0px 7px; height: 29px; width: 105px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">부 
					
					
																<span style="spacerun:yes">&nbsp;</span>
																<span style="spacerun:yes">&nbsp;</span>서
					
					
															</span>
														</p>
													</td>
													<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; padding: 0px 7px; height: 29px; width: 190px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
															${approvalVO.deptName}
														</p>
													</td>
													<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 29px; width: 109px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">직 
					
					
																<span style="spacerun:yes">&nbsp;</span>
																<span style="spacerun:yes">&nbsp;</span>급
					
					
															</span>
														</p>
													</td>
													<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; padding: 0px 7px; height: 29px; width: 196px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
															${approvalVO.positionName}
														</p>
													</td>
												</tr>
												<tr>
													<td style="border-right: 1px solid black; border-bottom: 1px solid black; border-left: 1px solid black; border-image: initial; border-top: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 29px; width: 105px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">성 
					
					
																<span style="spacerun:yes">&nbsp;</span>
																<span style="spacerun:yes">&nbsp;</span>명
					
					
															</span>
														</p>
													</td>
													<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 29px; width: 190px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
															${approvalVO.empName}
														</p>
													</td>
													<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; background: rgb(208, 206, 206); padding: 0px 7px; height: 29px; width: 109px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">기안일자</span>
														</p>
													</td>
													<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 29px; width: 196px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
															${approvalVO.apCDate}
														</p>
													</td>
												</tr>
												<tr>
													<td style="border-right: 1px solid black; border-bottom: 1px solid black; border-left: 1px solid black; border-image: initial; border-top: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 29px; width: 105px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">제 
																<span style="spacerun:yes">&nbsp;&nbsp;</span>목
															</span>
														</p>
													</td>
													<td colspan="3" style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 29px; width: 495px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
															${approvalVO.apTitle}
														</p>
													</td>
												</tr>
											</tbody>
										</table>
										<p style="margin:0px 0px 0px;text-align:justify;font-size:10pt;font-family:맑은 고딕;line-height:normal">
											<span style="font-family:나눔고딕">&nbsp;</span>
										</p>
										<table border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border: none; width: 600px;" class="expenseTable" data-pe_b-o-c="" status="default">
											<tbody data-pe_b-o-c="">
												<tr data-pe_b-o-c="">
													<td style="border: 1px solid black; background: rgb(208, 206, 206); padding: 0px 7px; height: 29px; width: 247px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">항
					
					
																<span style="spacerun:yes">&nbsp; </span>목
					
					
															</span>
														</p>
													</td>
													<td style="text-align: center; border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 29px; width: 83px;" colspan="1">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">수&nbsp;량
															</span>
														</p>
													</td>
													<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 29px; width: 148px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">금 
					
					
																<span style="spacerun:yes">&nbsp;</span>액
					
					
															</span>
														</p>
													</td>
													<td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; border-image: initial; border-left: none; background: rgb(208, 206, 206); padding: 0px 7px; height: 29px; width: 121px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">비 
					
					
																<span style="spacerun:yes">&nbsp;</span>고
					
					
															</span>
														</p>
													</td>
												</tr>
												
												<c:forEach items="${approvalVO.expenseList}" var="list">
												
													<input type="hidden" name="apNo" id="apNo" value="${list.apNo}">
													<tr>
														<td style="border-top: none; border-left: 1px solid black; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 29px; width: 247px;">
															<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
																<span style="font-family:나눔고딕">&nbsp;</span>
																${list.expenseName}
															</p>
														</td>
														<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 29px; width: 83px;" colspan="1">
															<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
																<span style="font-family:나눔고딕">&nbsp;</span>
																${list.expenseAmount}
															</p>
														</td>
														<td class="priceSum" style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 29px; width: 148px;">
															<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
																<span style="font-family:나눔고딕">&nbsp;</span>
																${list.expensePrice} 원
															</p>
														</td>
														<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 29px; width: 121px;">
															<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
																<span style="font-family:나눔고딕">&nbsp;</span>
																${list.expenseBigo}
															</p>
														</td>
													</tr>
												</c:forEach>

												<tr>
													<td style="border-top: none; border-left: 1px solid black; border-bottom: 1px solid black; border-right: 1px solid black; background: rgb(208, 206, 206); padding: 0px 7px; height: 29px; width: 330px;" colspan="2" rowspan="1">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">지출총액</span>
														</p>
													</td>
													<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 29px; width: 148px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">
															${approvalVO.priceSum} 원
															</span>
														</p>
													</td>
													<td style="border-top: none; border-left: none; border-bottom: 1px solid black; border-right: 1px solid black; padding: 0px 7px; height: 29px; width: 121px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
														</p>
													</td>
												</tr>
											</tbody>
										</table>
										<p style="margin:0px 0px 0px;text-align:justify;font-size:10pt;font-family:맑은 고딕;line-height:normal">
											<span style="font-family:나눔고딕">&nbsp;</span>
										</p>
										<p style="margin:0px 0px 0px;text-align:justify;font-size:10pt;font-family:맑은 고딕;line-height:normal">
											<span style="font-family:나눔고딕">&nbsp;</span>
										</p>
										<table border="0" cellspacing="0" cellpadding="0" style="border-collapse: collapse;border: none">
											<tbody>
												<tr>
													<td style="padding: 0px 7px; width: 600px; height: 16px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">위 금액을 청구 하오니 결재 바랍니다.</span>
														</p>
													</td>
												</tr>
												<tr>
													<td style="padding: 0px 7px; width: 600px; height: 16px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
														</p>
													</td>
												</tr>
												<tr>
													<td style="padding: 0px 7px; width: 600px; height: 16px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">
																<fmt:formatDate pattern="yyyy년 MM월 dd일" value="${approvalVO.apCDate}"/>
															</span>
														</p>
													</td>
												</tr>
												<tr>
													<td style="padding: 0px 7px; width: 600px; height: 16px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
														</p>
													</td>
												</tr>
												<tr>
													<td style="padding: 0px 7px; width: 600px; height: 16px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">기 안 자 :
																<span style="spacerun:yes">&nbsp;&nbsp;&nbsp; ${approvalVO.empName} </span>
																<span style="spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>(인)
															</span>
														</p>
													</td>
												</tr>
												<tr>
													<td style="padding: 0px 7px; width: 600px; height: 16px;">
														<p align="center" style="margin:0px 0px 0px;font-size:10pt;font-family:맑은 고딕;text-align:center;line-height:normal">
															<span style="font-family:나눔고딕">&nbsp;</span>
														</p>
													</td>
												</tr>
											</tbody>
										</table>
										<p>
											<br>
											</p>
											<p>
												<br>
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<p>
									<br>
									</p>
									<p style="margin:0px 0px 10px;text-align:justify;line-height:107%;font-size:10pt;font-family:맑은 고딕">
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

</body>
</html>