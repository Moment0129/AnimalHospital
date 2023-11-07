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

<!-- include summernote -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
integrity="sha256-7ZWbZUAi97rkirk4DcEp4GWDPkWpRMcNaEyXGsNXjLg=" crossorigin="anonymous">	  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css"
integrity="sha256-IKhQVXDfwbVELwiR0ke6dX+pJt0RSmWky3WB2pNx9Hg=" crossorigin="anonymous">

<!-- include codemirror (codemirror.css, codemirror.js, xml.js, formatting.js) -->
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.css">
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/theme/monokai.css">
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/mode/xml/xml.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/codemirror/2.36.0/formatting.js"></script>

<!-- include summernote css/js-->
<link href="summernote.css">
<script src="summernote.js"></script>

<c:import url="/WEB-INF/views/layout/headCSS.jsp"></c:import>
</head>
<meta charset="UTF-8">
<title>진료차트추가페이지</title>

</head>
<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<c:import url="/WEB-INF/views/layout/sidebar.jsp"></c:import>
			<!-- Layout container -->
			<div class="layout-page" style="align-items:center;">
			<sec:authentication property="Principal" var="user"/>
				<c:import url="/WEB-INF/views/layout/topbar.jsp"></c:import>
				<!-- Content wrapper -->
				<div class="content-wrapper">
					<!-- Content -->
					<!-- 내용부분-->
					<div class="container-xxl flex-grow-1 container-p-y">
						<div class="card shadow mb-4" style="align-items: center;">
							<form action="./add" method="POST" enctype="multipart/form-data">
								<input type="hidden" id="customerNo" name="customerNo" value="${vo.customerNo}"> 
								<input type="hidden" id="username" name="username" value="${emp.username}">
								<div>
									<div style="width: 700px; margin-top: 20px;">
										<div>
											<table class="table">
												<%-- <tr>
													<td rowspan="3" style="font-size: xx-large; font-weight: bolder;">진료차트작성</td>
													<!-- <td></td> -->
													<td>사원번호</td>
													<td>${user.username}</td>
												</tr> --%>
												<tr>
													<td rowspan="2" style="font-size: xx-large; font-weight: bolder;">진료차트작성</td>
													<!-- <td></td> -->
													<td>작성자</td>
													<td>${emp.empName}</td>
												</tr>
												<tr>
													<!-- <td></td> -->
													<!-- <td></td> -->
													<td>작성일</td>
													<td><input type="date" name="date" class="form-control" id="date"></td>
												</tr>
											</table>
											<div>
												<br><h3>반려동물</h3>
												<table class="table">
													<tr>
														<td>이름</td>
														<td>${vo.animalName}</td>
													</tr>
													<tr>
														<td>성별</td>
														<td>${vo.gender}</td>
													</tr>
													<tr>
														<td>나이</td>
														<td>${vo.age}</td>
													</tr>
													<tr>
														<td>병명</td>
														<td><input type="text" name="disease" class="form-control" id="disease"></td>
													</tr>
												</table>
											</div>

											<div class="mb-3">
												<label for="contents" class="form-label">내용</label>
												<textarea class="form-control" id="contents" name="contents" rows="3" placeholder="내용을 입력하세요"></textarea>
											</div>
											
											<div class="mb-3">
											  <label for="pic" class="form-label">사진첨부 (최대 5개)</label>
											  <div id="fileUploadContainer">
											    동적으로 추가될 파일 업로드 필드와 삭제 버튼이 들어갈 곳입니다.
											  <br>
											  </div>
											  <br>
											  <button class="btn btn-primary" type="button" id="addFileField">파일 추가</button>
											</div>

											<!-- <h3>약물추가</h3> -->
											<!-- Button trigger modal -->
											<%-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#medicineAdd">
												약물추가
											</button>
											
											<!-- Modal -->
											<div class="modal fade" id="medicineAdd" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
													<h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
													<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
													</div>
													<div class="modal-body">
														<input type="hidden" id="medicineNo" name="medicineNo" value="${param.medicineNo}" >
														<form action="./medicineList" method="GET" id="frm">
															<div>
															약물명 : <input type="text" name="name" id="name">                  
															<button type="submit" id="medicineSearch" class="btn btn-primary" >검색</button>
															</div>
														</form>
													</div>
													<div class="modal-footer">
													<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
													<button type="button" class="btn btn-primary">Add</button>
													</div>
												</div>
												</div>
											</div> --%>
											
											<!-- 약물추가 -->
											<h3>약물추가</h3>

										</div>
										<button type="submit" class="btn btn-primary" style="float:right">진료차트등록</button>
									</div>
								</div>
							</form>
						</div>	
					</div>
				<!-- Content wrapper -->
				</div>
			<!-- / Layout page -->
			</div>
		</div>
		<!-- Overlay -->
		<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	<!-- / Layout wrapper -->
	<c:import url="/WEB-INF/views/layout/footjs.jsp"></c:import>

	<!-- summernote -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"
	integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"
	integrity="sha256-5slxYrL5Ct3mhMAp/dgnb5JSnTYMtkr4dHby34N10qw=" crossorigin="anonymous"></script>
	
	<!-- language pack -->
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/lang/summernote-ko-KR.min.js"
	integrity="sha256-y2bkXLA0VKwUx5hwbBKnaboRThcu7YOFyuYarJbCnoQ=" crossorigin="anonymous"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	
	<script>
	$('#contents').summernote({
	  tabsize: 2,
	  height: 300,
	  codemirror: { // codemirror options
		    theme: 'monokai'
		  },
	  lang: 'ko-KR', // default: 'en-US'

	});
	
	$("#contents").summernote('code'); 
	</script>
	
	<script>
	document.addEventListener("DOMContentLoaded", function () {
        const fileUploadContainer = document.getElementById("fileUploadContainer");
        const addFileFieldButton = document.getElementById("addFileField");
        const maxFileFields = 5;
        let fileFieldCount = 0;

        // 파일 필드를 동적으로 추가하는 함수
        function addFileField() {
          if (fileFieldCount < maxFileFields) {
            const fileField = document.createElement("input");
            fileField.type = "file";
            fileField.name = "files"; // 필요한 이름을 지정하세요.
            fileField.className = "form-control mb-2";

            const deleteButton = document.createElement("button");
            deleteButton.innerHTML = "삭제";
            deleteButton.className = "btn btn-danger mb-2";
            deleteButton.addEventListener("click", function () {
              // 파일 필드 삭제 버튼을 눌렀을 때 해당 필드를 제거합니다.
              fileUploadContainer.removeChild(fileField);
              fileUploadContainer.removeChild(deleteButton);
              fileFieldCount--;
            });

            fileUploadContainer.appendChild(fileField);
            fileUploadContainer.appendChild(deleteButton);
            fileFieldCount++;
          } else {
            // 최대 파일 개수에 도달한 경우 알림을 표시합니다.
            alert("더 이상 파일을 추가할 수 없습니다 (최대 5개).");
          }
        }

        // "파일 추가" 버튼 클릭 시 파일 필드를 추가합니다.
        addFileFieldButton.addEventListener("click", addFileField);
      });
	</script>

</body>
</html>