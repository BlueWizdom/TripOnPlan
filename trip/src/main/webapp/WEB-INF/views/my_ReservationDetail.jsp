<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="header.jsp"%>
</head>
<body>
<script>
function f_getPayInfo(mid) {
	$.ajax({
		url : "payamount",
		data : {"mid": mid},
		method : "GET",
		contentType : 'application/json; charset=UTF-8',
		success : function(val){
			console.log(val);
			getPayInfo(val);
			if(val.msg!=null){
				alert(val.msg + "\n관리자에게 문의하십시오.");
			}else{
				console.log(val)
			}
		},
		error :  function(request, status){
			alert("목록 가져오기를 할 수 없습니다.");
			}
		});
};

function f_cancelPay(mid){
	$.ajax({
		url : "paycan",
		data : {"mid": mid},
		method : "POST",
		success : function(val){
			console.log(val);
			if(val==1) {
				alert("취소 완료");
				f_cancelRes();
			} else {
				alert("취소 실패\n이미 취소되었거나 잘못된 정보입니다.");
			}
		},
		error :  function(request, status){
			alert("취소가 실패하였습니다.");
		}
	});
};

function reservationtr(val) {
	if(val==1){
		alert("결제 취소 내역은\n수정이 불가능 합니다.")
		window.location.reload()
	} else{
	document.detailform.submit();
	}
};

function f_cancelRes(){
	let frm = document.getElementsByName("resCancelfm")[0];
	frm.action = "cancelReservation.do";
	frm.method = "post";
	frm.submit();
};

</script>

<div>
<%-- 	<img style="width: 600px; float: left; margin: 50px;" src="resources/room_img/${rvo.room_img}"> --%>
	<br><br>
	<fieldset class="resd-fieldset1">
	<legend class="resd-legend1">예약 내역</legend>
	
	<div class="resd-div"> ${rvo.room_name}</div>
	<div class="resd-div">체크인 :  ${rvo.res_checkin}</div>
	<div class="resd-div">체크아웃 :  ${rvo.res_checkout}</div>
	<br><br>
	<legend class="resd-legend2">결제 정보</legend>
	<div class="resd-div"> 결제자 성명 : ${rvo.res_name}</div>
	<div class="resd-div"> 가격 : ${rvo.pay_amount} </div>
	<div class="resd-div"> 결제일 : ${rvo.pay_date}</div>
	<div id="daybefore"><button class="detail-but" onclick="f_cancelPay('${rvo.merchant_uid}')">결제 취소</button></div>
<%-- 	<div class="resd-div"> ${rvo.merchant_uid}</div> --%>
	</fieldset>
	
<!-- 	이용자 정보 -->
	<form name="detailform" action="updateReservationDetail.do" method="post">
	<fieldset class="resd-fieldset2">
	<legend class="resd-legend2">이용자 정보</legend>
	<div class="resd-div">이&nbsp;&nbsp;&nbsp;&nbsp;름  <input class="detail-input" name="res_name" readonly value="${rvo.res_name}"></div>
	<div class="resd-div">연락처   <input class="detail-input" name="res_tel" value="${rvo.res_tel}"></div>
	<div class="resd-div">E-mail <input class="detail-input" name="res_email" value="${rvo.res_email}"></div>
	<div  style="display:none;" class="resd-div">res_id : <input name="res_id" value="${rvo.res_id}"></div>
	<button class="detail-but" type="button" onclick="reservationtr(${rvo.res_status})">수정하기</button>
	</fieldset>
	</form>
	
<!-- 		<fieldset class="resd-fieldset2"> -->
<!-- 	<legend class="resd-legend2">결제 정보</legend> -->
<%-- 	<div class="resd-div"> 결제자 성명 : ${rvo.res_name}</div> --%>
<%-- 	<div class="resd-div"> 가격 : ${rvo.pay_amount} </div> --%>
<%-- 	<div class="resd-div"> 결제일 : ${rvo.pay_date}</div> --%>
<%-- 	<div id="daybefore"><button class="detail-but" onclick="f_cancelPay('${rvo.merchant_uid}')">결제 취소</button></div> --%>
<!-- 	</fieldset> -->
	</div>


			<form name="resCancelfm">
			<input type="hidden" name="user_id" value="${user_id}" />
			<input type="hidden" name="res_id" value="${rvo.res_id}" />
			<input type="hidden" name="imp_uid" id="${rvo.imp_uid}" value="${rvo.imp_uid}" />
			<input type="hidden" name="merchant_uid" id="${rvo.merchant_uid}" value="${rvo.merchant_uid}" />
			</form>



</body>
</html>