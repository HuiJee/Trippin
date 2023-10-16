<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="utf-8">
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/resources/js/httpRequest.js"></script>

<link rel="shorcut icon"
	href="https://triple.guide/icons/favicon-152x152.png">
<title>나를 아는 여행 앱, 트리플</title>


<style>
html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd,
	q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li,
	fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr,
	th, td, article, aside, canvas, details, figcaption, figure, footer,
	header, hgroup, menu, nav, section, summary, time, mark, audio, video,
	fieldset {
	margin: 0;
	padding: 0;
}

@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap')
	;

ol, ul {
	list-style: none
}

li {
	list-style-type: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

img {
	max-width: 100%;
	height: auto;
}

mark {
	background: none
}

select {
	max-width: 100%;
}

caption, legend {
	display: none;
}

hr {
	display: none;
}

h1, h2, h3, h4, h5, h6 {
	font-size: 100%;
}

address, strong {
	font-style: normal;
	font-weight: normal;
}

table {
	border-collapse: collapse;
}

input, select {
	outline: none;
	font-family: inherit
}

.inner {
	position: relative;
	width: 100%;
	height: 90px;
}

.hd-in {
	width: 100%;
	display: flex;
	justify-content: space-between;
	position: fixed;
	background-color: white;
	border-bottom: 1px solid #E8E8E8;
	height: 80px;
	line-height: 80px;
	box-shadow: 0px 2px 0px 0px #F2F2F2;
}

.hd-left {
	font-weight: bold;
	font-size: 24px;
	margin-left: 4%;
	font-family: 'Jua', sans-serif;
}

.hd-left a {
	text-decoration: none;
	color: black;
}

.hd-right a {
	text-decoration: none;
	color: #797979;
}

.hd-right {
	font-weight: bold;
	font-size: 20px;
	margin-right: 6%;
}

.main-top {
	margin-left: 26%;
	height: 60px;
}

.main-title {
	font-size: 25px;
	font-weight: bold;
	color: #3A3A3A;
	line-height: 60px;
	margin-left: 1.5%;
}

.main-mid {
	margin-left: 26%;
	margin-right: 26%;
	margin-top: 3%;
	width: 50%;
}

.footer {
	margin-top: 2%;
	padding-top: 1%;
	background-color: rgb(250, 250, 250);
}

.foot-top {
	margin-left: 26.74%;
	margin-right: 24.82%;
}

.kakaot {
	font-weight: bold;
	margin-bottom: 2%;
}

.kakaot span, .telk span {
	color: #368FFF;
	margin-left: 1%;
}

.telk {
	font-weight: bold;
	margin-bottom: 1%;
}

.telf {
	font-weight: bold;
	margin-bottom: 2%;
}

.ft-info {
	font-weight: bold;
	color: #9A9A9A;
	line-height: 2.1;
	margin-bottom: 5%;
	padding-bottom: 3%;
	border-bottom: 1px solid #EFEFEF;
}

.foot-foot {
	margin-left: 26.74%;
	margin-right: 24.82%;
}

.ff {
	font-weight: 500;
	font-size: 11px;
	color: rgba(58, 58, 58, 0.5);
}

.ff2 {
	font-weight: 500;
	font-size: 11px;
	color: rgba(58, 58, 58, 0.5);
	margin-top: 2%;
	margin-bottom: 7%;
}

strong {
	font-weight: bold;
}
.header {
	margin-left : 10%;
	margin-right : 10%;
	
}
.main {
	margin-left : 10%;
	margin-right : 10%;
}
.inner {
	width : 100%;
}
.inner img {
	width : 24px;
	position : relative;
	top : 3vh;
	right : 2vw;
	cursor : pointer;
}
li {
	line-height : 200%;
	font-size : 13px;
	font-weight : bold;
	color : #616161;
	white-space : pre-line;
	appearance : none;
	padding-left : 2%;
	
}

ul {
	list-style-type : none;
	list-style : none;
	padding-left : 3%;
	padding-right : 3%;
	word-break : keep-all;
	padding-bottom : 3%;
}
li::marker {
	content: "•";
}
.title {
	font-size : 22px;
	font-weight : bold;
	padding-bottom : 1.5%;
}
</style>
<script type="text/javascript">
function closePopup() {
	
	window.close();
	
	
}
</script>

</head>
<body>
	<header class="header">
		<div class="inner">
			<img onclick="closePopup();" src="https://cdn-icons-png.flaticon.com/512/109/109602.png">
		</div>
	</header>
	<div class="main">
		<div class="main-text">
			<div class="title">개인정보 제 3자 제공</div>
			<ul>
				<li>&#12828;인터파크트리플(이하'회사')은 원칙적으로 이용자 동의 없이 개인정보를 외부에 제공하지 않습니다.</li>
				<li>회사는 이용자의 사전 동의 없이 개인정보를 외부에 제공하지 않습니다. 단 이용자가 외부 제휴사의 서비스를 이용하기 위하여 개인정보 제공에 직접 동의를 한 경우, 그리고 관련 법령에 의거해 트리플에 개인정보 제출 의무가 발생한 경우, 이용자의 생명이나 안전에 급박한 위험이 확인되어 이를 해소하기 위한 경우에 한하여 개인정보를 제공하고 있습니다.</li>
				<li>회사는 편리하고 더 나은 서비스를 제공하기 위해 업무 중 일부를 외부에 위탁하고 있습니다.</li> 
				<li>회사는 서비스 제공을 위하여 필요한 업무 중 일부를 외부 업체에 위탁하고 있으며, 위탁받은 업체가 정보통신망법에 따라 개인정보를 안전하게 처리하도록 필요한 사항을 규정하고 관리/감독을 하고 있습니다.</li>
				<li>수탁업체:엔에이치엔 클라우드(주)</li>
				<li>위탁업무 내용:고객상담,숙소/투어·티켓 예약 및 서비스 운영</li>
			</ul>
		</div>
	</div>
	


		
</body>
</html>