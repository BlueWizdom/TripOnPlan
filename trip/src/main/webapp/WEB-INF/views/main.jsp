<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>main</title>
<%@ include file="header.jsp"%>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
@import url('https://fonts.googleapis.com/css2?family=B612:wght@700&family=Do+Hyeon&display=swap');
@import url('https://fonts.googleapis.com/css2?family=B612:wght@700&family=Do+Hyeon&family=RocknRoll+One&display=swap');
</style>
</head>

<body class="main-body">
<br><br><br>
     <div class="container main-top-div"> 
     <div class="main-div1">숙소 예매와 플레너 작성을 한번에</div>
     <div class="main-div2">tripONplan</div><br>
     </div> <br>
 <div class="container-fulid main-img-div">
<img style="width: 82%; float: left;" src="resources/img/mainimg.png">
</div>
<br><br><br><br><br>
<button class="main-icon-div" onclick="location.href='u_getRoomList.do'">숙소</button><br>
<button class="main-icon-div" onclick="location.href='plannerlist.do?page=Y'">플래너(보기)</button><br>
<button class="main-icon-div" onclick="location.href='start.do'">플래너(쓰기)</button>
</body>
</html>
