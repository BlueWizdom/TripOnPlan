<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>Admin Dashboard</title>
<style>
#searchNav {
	-webkit-justify-content: flex-end;
	justify-content: flex-end;
}

a.list-btn {
	text-decoration: none;
	font-weight: bolder;
	display: inline-block;
	padding: 5px 10px;
	background-color: blue;
	color: #fff;
	border: 1px solid #777;
	border-radius: 5px;
}

a.list-btn:hover, a.list-btn:active {
	background-color: red;
}

a.aSel {
	color: red;
}

div#btnBox {
	text-align: center;
}
</style>
</head>

<body>
	<div class="wrapper">
		<div class="sidebar" data-color="blue">
			<!-- data-color="purple | blue | green | orange | red" -->
			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="#" class="simple-text"> Trip 3.0 </a>
				</div>
				<ul class="nav">
					<li class="nav-item"><a class="nav-link" href="manage_main.do">
							<i class="nc-icon nc-chart-pie-35"></i>Dashboard
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_userList.do"> <i class="nc-icon nc-circle-09"></i>회원
							정보
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_roomList.do"> <i class="nc-icon nc-istanbul"></i>숙소
							정보
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_hostList.do"> <i class="nc-icon nc-satisfied"></i>업주
							정보
					</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="manage_faqList.do"> <i class="nc-icon nc-single-copy-04"></i>공지사항
							관리
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_plannerList.do"> <i class="nc-icon nc-map-big"></i>플래너
							정보
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_reservList.do"> <i class="nc-icon nc-money-coins"></i>예약
							정보
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg">
				<div class="container-fluid">
					<a class="navbar-brand" href="#pablo"> Dashboard </a>
					<button href="" class="navbar-toggler navbar-toggler-right"
						type="button" data-toggle="collapse"
						aria-controls="navigation-index" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-bar burger-lines"></span> <span
							class="navbar-toggler-bar burger-lines"></span> <span
							class="navbar-toggler-bar burger-lines"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<ul class="nav navbar-nav mr-auto">
							<li class="nav-item"><a href="#" class="nav-link"
								data-toggle="dropdown"> <span class="d-lg-none">Dashboard</span>
							</a></li>
							<li class="nav-item"><a href="#" class="nav-link"> <i
									class="nc-icon nc-zoom-split"></i> <span class="d-lg-block">&nbsp;Search</span>
							</a></li>
						</ul>

						<ul class="navbar-nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<span class="no-icon">${manage_id}님 접속중</span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="manage_logout.do"> <span class="no-icon">Log
										out</span>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->

			<!-- Search -->
			<nav id="searchNav" class="navbar navbar-expand-sm navbar-dark">
				<form class="form-inline" action="manage_faqList.do" method="post">
					<select class="form-control" id="sel1" name="searchCondition"
						style="display: inline-block !important; margin-right: 10px;">
						<c:forEach items="${conditionMap}" var="option">
							<option value="${option.value}">${option.key}</option>
						</c:forEach>
						<%-- 		<option value="${conditionMap['제목']}">${conditionMap['제목']}</option> --%>
						<%-- 		<option value="${conditionMap['내용']}">${conditionMap['내용']}</option> --%>
					</select> <input class="form-control mr-sm-2" type="text" name="searchKeyword" 
						placeholder="검색어를 입력하세요.">
					<button class="btn btn-success" type="submit">검색</button>
				</form>
			</nav>
			<div class="content">
				<div class="container-fluid">

					<h3>공지목록</h3>
					<table border="1">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성일</th>
							<th>작성자</th>
							<th>조회수</th>
							<th><a class="btn btn-primary"
								href="manage_faqInsertForm.do" role="button">공지등록</a></th>
						</tr>
						<c:forEach var="faq" items="${faqList}">
							<tr align="center">
								<td>${faq.faq_no}</td>
								<td>${faq.faq_title}</td>
								<td>${faq.faq_writer}</td>
								<td>${faq.faq_regdate}</td>
								<td>${faq.faq_cnt}</td>
								<td><a class="btn btn-danger"
									href="manage_faqInfo.do?faq_no=${faq.faq_no}" role="button">공지보기</a></td>
							</tr>
						</c:forEach>
					</table>
					<br> <br>
					<div id="btnBox">
						<!-- 반복처리할 태그 시작-->
						<c:if test="${paging.nowPageBtn > 1 }">
							<a class="list-btn"
								href="manage_faqList.do?nowPageBtn=${paging.nowPageBtn -1 }">&lt;</a>
						</c:if>
						<c:forEach begin="${paging.startBtn}" end="${paging.endBtn }"
							step="1" var="i">
							<c:choose>
								<c:when test="${paging.nowPageBtn == i}">
									<a class="aSel">${i}</a>
								</c:when>
								<c:otherwise>
									<a class="list-btn" href="manage_faqList.do?nowPageBtn=${i}">${i}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${paging.nowPageBtn < paging.totalBtnCnt }">
							<a class="list-btn"
								href="manage_faqList.do?nowPageBtn=${paging.nowPageBtn +1 }">&gt;</a>
						</c:if>
						<!-- 반복처리할 태그 끝 -->

					</div>
					<br> <br>
				</div>
			</div>
		</div>

	</div>

</body>
<%@ include file="footer.jsp"%>
</html>