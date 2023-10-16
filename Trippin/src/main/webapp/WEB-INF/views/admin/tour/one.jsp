<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
    <html lang="kr">
        <head>
            <meta charset="utf-8">
            <c:set var="cpath" value="${pageContext.request.contextPath }" />
            <script type="text/javascript" src="${cpath }/resources/js/httpRequest.js"></script>
            <script
			  src="https://code.jquery.com/jquery-3.7.0.js"
			  integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
			  crossorigin="anonymous">
			</script>
            <link rel="shorcut icon" href="https://triple.guide/icons/favicon-152x152.png">
            <title>나를 아는 여행 앱, 트리플</title>

            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@500&family=Jua&display=swap" rel="stylesheet">

            <style>
                html,body,div,span,object,iframe,h1,h2,h3,h4,h5,h6,p,
                blockquote,pre,abbr,address,cite,code,del,dfn,em,img,
                ins,kbd,q,samp,small,strong,sub,sup,var,b,i,dl,dt,dd,ol,ul,li,
                fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,
                article,aside,canvas,details,figcaption,figure,footer,header,hgroup,
                menu,nav,section,summary,time,mark,audio,video,fieldset {margin:0; padding:0; }


                ol,ul{list-style:none}
                li { list-style-type:none; }
                table{border-collapse:collapse;border-spacing:0;}
                img{max-width:100%;height:auto;}
                mark{background:none}
                select{max-width:100%;}
                caption, legend {display:none;}
                hr{display:none;}
                h1,h2,h3,h4,h5,h6 { font-size:100%; }
                address,strong{font-style:normal; font-weight:normal;}
                table {border-collapse:collapse; }
                input, select{outline: none;font-family:inherit}

                body {
                    width : 100vw;
                    height : 500vh;
                    
                }
                .inner {
					width: 100%;
					height: 50px;
				}
                .hd-in {
					margin-top: 0.5%;
					height: 40px;
				}
                .hd-left {
					font-weight: bold;
					color: #929292;
					font-size: 13px;
					margin-left: 2%;
				}
				.hd-left a{
					text-decoration: none;
					font-size: 13px;
					color: #929292;
				}
				.title {
					width: 100%;
					height: 200px;
				}
				
				.mtitle {
					font-weight: bold;
					font-size: 35px;
					margin-left: 45%;
					margin-top: 1%;
				}
				
				.stitle {
					font-weight: bold;
					color: #9B9D9B;
					margin-left: 43%;
					margin-top: 1%;
					display: flex;
				}
				
				.stitle-p {
					font-family: 'Jua', sans-serif;
					color: #50E3C2;
					font-size: 25px;
					margin-top: -0.5%;
				}
                .hd-mid,.hd-right {
                    width : 33%;
                }
                .hm-1 input {
                    width : 80%;
                    height : 8vh;
                    font-size : 18px;
                    border : 0;
                    border-bottom : 2px solid #929292;
                    
                    
                }
                
                .hm-img {
                    width : 10%;
                    position : relative;
                    top : 2vh;
                    right : 3.5vw;
                }
                .my-page {
                    
                    height : 13vh;
                }
                .my-page a {
                    text-decoration: none;
                }
                .mp-ind {
                    width : 25%;
                    
                    border: 2px solid #E2E2E2;
                    border-radius: 45px;
                    height : 8vh;
                    margin-top : 4%;
                    margin-left : 45%;
                }
                .mp-ind:hover {
                    transition-duration: 0.3s;
                    box-shadow : 0px 4px 3px #adadad;
                }
                .hdr1 {
                    width : 30%;
                    margin-left : 16%;
                    margin-bottom : 4%;
                }
                .hdr2 {
                    width : 30%;
                    margin-bottom : 4%;
                }
                
                .hl-1 a {
                    text-decoration: none;
                }
                .tit1 {
                    width : 25%;
                    margin-left : 20%;
                    position : relative;
                    top : 2vh;
                }
                .tit2 {
                    width : 5%;
                    position : relative;
                    top : -1vh;
                    right : 0.5vw;
                }
                .main-1,.main-2, .main-3, .main-4, .main-5, .main-6, .main-7 {
                    margin-left : 26%;
                    margin-right : 26%;
                }
                .m1t-tit {
                    margin-top : 2%;
                    font-size : 25px;
                    font-weight : bold;
                }
                .m1t-sc {
                    margin-top : 2%;
                    display : flex;
                    
                }
                .mltsc-1 {
                    width : 30%;
                }
                .mlt-loca {
                    margin-top : 2%;
                }
                .mltl-img {
                    width : 2%;
                }
                .mltl-text {
                    font-size : 13px;
                    font-weight: bold;
                    color :#898989;
                }
                .m1-mid {
                    margin-top : 2%;
                }
                .m1-mid img{
                    width : 100%;
                    height : 60vh;
                    border-radius : 15px;
                }
                .mlstar {
                    margin-top : 4%;
                    /* width : 0%; */
                    height : 100%;
                    background-image : url("https://yaimg.yanolja.com/joy/sunny/static/images/icon-score-yayellow-fill.svg");
                    background-repeat: repeat-x;
                }
                .mltsc-1 {
                    display: flex;
                    font-weight : bold;
                }
                .mltsc-1 span {
                    position : relative;
                    right : 1.2vw;
                    bottom : 0.2vh;
                }
                .ml-sect {
                    width : 40%;
                }
                .ml2-img {
                    width : 15%;
                    position : relative;
                    top : 0.3vh;
                }
                .mltsc-2 {
                    font-weight: bold;
                    position : relative;
                    right : 7vw;
                    bottom : 0.2vh;
                }
                .mb-z {
                    border-bottom : 2px solid #CDCDCD;
                    display : flex;
                    justify-content : space-around;
                    height : 10vh;
                    padding-top : 3%;
                    padding-left : 10%;
                    
                   
                }
                .mb-img {
                    width : 25%;
                    
                }
                .mb-save h4{
                    font-weight : 500;
                    color : #CDCDCD;
                    font-size : 14px;
                }
                .mb-save {
                	width : 20%;
                }
                .mb-save a {
                    text-decoration: none;
                    color : #CDCDCD;
                }
                .m2-top {
                    margin-top : 5%;
                }
                .m2t-tit span{
                    font-size : 25px;
                    font-family: 'Jua', sans-serif;
                    
                }
                .m2-mid {
                    margin-top : 5%;
                    border-bottom : 10px solid #EFEFEF;
                }
                .mem-img {
                    width : 100%;
                    height : 60vh;
                    
                }
                .m2m-img img {
                    object-fit: contain;
                    border-radius: 15px;
                }
                .m2m-text {
                    margin-top : 3%;
                }
                .sub-check {
                    margin-top : 3%;
                    margin-bottom : 7%;
                }
                .sub-check a {
                    font-weight: bold;
                    color : #2987F0;
                }
                .m3-top {
                    margin-top : 5%;
                }
                .m3t-tit {
                    font-weight: bold;
                    font-size : 25px;
                    font-family: 'Jua', sans-serif;
                }
                .m3t-amend {
                    margin-top : 1%;
                    text-align: right;
                }
                .m3t-amend a {
                    text-decoration: none;
                    color : black;
                    font-weight: bold;
                    font-size : 14px;
                }
                .m3m-mapinfo {
                    background-color: #EFEFEF;
                    margin-top : 2%;
                    padding : 2%;
                    line-height: 200%;
                }
                .m3m-loca span, .m3m-tel span, .m3m-page span {
                    font-weight: bold;
                    margin-right : 2%;
                }
                .m3m-loca, .m3m-tel, .m3m-page {
                    font-size: 14px;
                }
                .main-4, .main-5, .main-6  {
                    margin-top : 2%;
                    padding-bottom : 2%;
                    border-bottom :1px solid #F3F3F3;
                }
                .m4-tit, .m5-tit, .m7-tit {
                    font-weight: bold;
                    margin-bottom : 1%;
                }
                .m5-tit {
                	width : 80%;
                }
                .right-btn {
                	width : 20%;
                	text-align : right;
                	font-weight : bold;
                }
                .m5-check {
                    margin-top : 2%;
                }
                .m6-tit {
                    font-weight: bold;
                    margin-bottom : 1%;
                    color : #3691FF;
                }
                .m6-tit span {
                    color : black;
                    margin-right : 1%;
                }
                .t-m6-tit {
                    font-size : 25px;
                    font-weight: bold;
                    margin-bottom : 3%;
                    font-family: 'Jua', sans-serif;
                    display: flex;
                    justify-content: space-between;
                }
                .t-m6-tit a img {
                    width : 40px;
                }
                .t-m6-tit span {
                    color : #2987F0;
                }
                .main-7 {
                    margin-top : 2%;
                    padding-bottom : 4%;
                    border-bottom :10px solid #EFEFEF;
                }
                .m5-btn {
                    background-color: white;
                    border-radius: 5px;
                    padding : 1%;
                    font-weight: bold;
                    cursor: pointer;
                }
                #weektime{
                	display: none;
                }
                .t-m6-stit {
                    display: flex;
                    justify-content: space-between;
                }
                .t-review-sel {
                    display: flex;
                    
                    width : 20%;
                    justify-content: space-between;
                }
                .suggestz {
                    background-image: url("https://assets.triple.guide/images/img-search-select-on@4x.png");
                    color : rgb(58, 58, 58);
                    background-size: 5px 5px;
                    background-position: left 35%;
                    background-repeat: no-repeat;
                    cursor: pointer;
                    padding-left: 9px;
                    font-size: 14px;
                    font-weight: bold;
                    line-height: 22px;
                }
                .suggest {
                    background-image: url("https://assets.triple.guide/images/img-search-select-off@4x.png");
                    color : rgba(58, 58, 58, 0.3);
                    background-size: 5px 5px;
                    background-position: left 35%;
                    background-repeat: no-repeat;
                    cursor: pointer;
                    padding-left: 9px;
                    font-size: 14px;
                    font-weight: bold;
                    line-height: 22px;
                }
                .sel-check {
                    appearance: none;
                    width : 22px;
                    height : 22px;
                    margin: 3px 8px 3px 4px;
                    border-radius: 5px;
                    position : relative;
                    top : 25%;
                    cursor: pointer;
                    border : 1px solid rgba(58,58,58,0.2);
                }
                .sel-check:checked {
                    background-color: #2987F0;
                    border: none;
                }
                .sel-check::after {
                    content: "";
                    display : block;
                    width : 100%;
                    height : 100%;
                    background-image: url("https://assets.triple.guide/images/ico-check@3x.png");
                    background-size: 100% 100%;
                }
                .fast-img {
                    width : 16px;
                    height: 16px;
                    cursor: pointer;
                }
                .sel-text {
                    width : 9vw;
                    background-color: white;
                    border: 1px solid rgba(239,239,239,1);
                    box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 15px;
                    border-radius: 8px;
                    color: rgba(58, 58, 58, 0.8);
                    font-weight: 500;
                    padding: 15px 37px 15px 15px;
                    font-size : 12px;
                    position: relative;
                    left : 74%;
                    bottom : 1.2vh;
                    display: none;
                }
                .sel-textz {
                    width : 9vw;
                    background-color: white;
                    border: 1px solid rgba(239,239,239,1);
                    box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 15px;
                    border-radius: 8px;
                    color: rgba(58, 58, 58, 0.8);
                    font-weight: 500;
                    padding: 15px 37px 15px 15px;
                    font-size : 12px;
                    position: relative;
                    left : 74%;
                    bottom : 1.2vh;
                    display: block;
                }
                .text-img img {
                    width : 10px;
                    height : 10px;
                    position: absolute;
                    top : 16px;
                    right : 17px;
                    cursor: pointer;
                }
                .review {
                    margin-top : 5%;
                    padding-bottom: 2%;
                    border-bottom: 2px solid #EFEFEF;
                }
                .review0 {
                    margin-top : 5%;
                    padding-bottom: 2%;
                    border-bottom: 2px solid #EFEFEF;
                }
                .review1 {
                    margin-top : 5%;
                    padding-bottom: 2%;
                    border-bottom: 2px solid #EFEFEF;
                }
                .user-info {
                    display: flex;
                }
                .uimg {
                    width : 36px;
                    height : 36px;
                    border-radius: 19px;
                    object-fit: cover;
                }
                .user-detail {
                    margin-left : 1%;
                    overflow-wrap: break-word;
                }
                .user-name {
                    color: rgb(58, 58, 58);
                    font-size : 15px;
                    font-weight: bold;
                }
                .user-level {
                    color : rgba(58, 58, 58, 0.4);
                    font-size : 12px;
                }
               /*  .rw-ssea {
                    width : 30%;
                }
                .rw-sect {
                    width : 40%;
                    height : 2vh;
                    
                } */
                /* .rw-star {
                    margin-top : 4%;
                    width : 51.8%;
                    height : 100%;
                    background-image: url("https://yaimg.yanolja.com/joy/sunny/static/images/icon-score-yayellow-fill.svg");
                    /* background-repeat: repeat-x; */
                } */
                .rw-date {
                    margin-top : 1%;
                    margin-bottom: 1%;
                }
                .date-img {
                    width : 16px;
                    height : 16px;
                    position: relative;
                    top : 0.25vh;
                }
                .date-text1 {
                    color : #2987F0;
                    font-weight: bold;
                    font-size : 14px;
                    
                }
                .date-text2 {
                    color : rgba(58, 58, 58, 0.7);
                    font-weight: 550;
                    font-size : 13px;
                }
                .rw-img {
                    margin-top : 1%;
                }
                .rw-img img {
                    border-radius: 4px;
                    width :  auto;
                    height : 30vh;
                    
                }
                .rwi-1 {
                    display : flex;
                    gap : 5px;
                    
                    flex-wrap: wrap;
                    
                }
                .rw-text {
                    color :rgb(58, 58, 58);
                    font-weight: bold;
                    font-size : 16px;
                    overflow-wrap: break-word;
                    padding-top: 1%;
                }
                .rw-foot {
                    margin-top : 1%;
                    display : flex;
                    justify-content: space-between;
                }
                .foot-detail {
                    display: flex;
                    
                    font-weight: bold;
                    color : rgba(58, 58, 58, 0.4);
                    width : 30%;
                }
                .foot-detail img {
                    width : 18px;
                    height : 18px;
                    position: relative;
                    top : 0.4vh;
                    left : 0.2vw;
                }
                .f-good {
                    margin-right :3%; 
                }
                .f-comment {
                    margin-left : 2%;
                }
                .foot-date {
                    display: flex;
                    font-weight: bold;
                    font-size : 12px;
                    color : rgba(58, 58, 58, 0.4);
                    
                    width : 30%;
                    justify-content: end;
                }
                .ft-date {
                    line-height : 235%;
                    margin-right : 5%;
                }
                .more-img {
                    width : 30px;
                    height : 30px;
                    cursor: pointer;
                }
                .foot-last {
                    width: 4vw;
                    background-color: white;
                    border: 1px solid rgba(239,239,239,1);
                    box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 15px;
                    border-radius: 8px;
                    color: rgba(58, 58, 58, 0.8);
                    padding: 15px 37px 15px 15px;
                    font-size: 12px;
                    position: relative;
                    left: 84%;
                    bottom: 1.2vh;
                    display: none;
                    line-height: 150%;
                }
                .foot-lastz {
                    width: 4vw;
                    background-color: white;
                    border: 1px solid rgba(239,239,239,1);
                    box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 15px;
                    border-radius: 8px;
                    color: rgba(58, 58, 58, 0.8);
                    padding: 15px 37px 15px 15px;
                    font-size: 12px;
                    position: relative;
                    left: 84%;
                    bottom: 1.2vh;
                    display: block;
                    line-height: 150%;
                    cursor: pointer;
                }
                .foot-lastz img {
                    width : 10px;
                    height : 10px;
                    position: absolute;
                    top : 18px;
                    right : 13px;
                    cursor: pointer;
                }
                .rvstars{
                	padding-top: 1%;
                }
                .date-area{
                	display: flex;
                }
                .fast-date{
                	margin-right: 1%;
                }
                .update a, .delete a{
                	text-decoration: none;
                	color: rgba(58, 58, 58, 0.8);
                }
                .btn-list{
					margin : 3% 26%;
					display: flex;
					justify-content: space-between;
				}
				.btn-left, .btn-right{
					width:100%;
				}
				
				.btn-right{
					display: flex;
				    justify-content: flex-end;
				}
				
				.btn-right input[type=button]{
					margin-left:1.2%;
				}
				
				input[type=button]{
					background-color: white;
					border-radius: 5px;
					padding: 1%;
					font-weight: bold;
					cursor: pointer;
					width:auto;
				}
				
				input[type=button]:hover{
					border: 2px solid #50E3C2;
					background-color: #50E3C2;
					color: white;
				}
            </style>
        </head>
        <body>
            <header class="header">
				<div class="inner">
					<div class="hd-in">
						<div class="hd-left">
							<img
								src="https://business.yanolja.com/common/kr/web/img/icon-home.png"
								onclick="document.location.href='${cpath}/admin/main'"> > 관리자 > 업체등록 
								> <a href="${cpath }/admin/list?cate=1">관광지관리</a>
								> <a href="${cpath }/admin/tour/one?f_seq=${param.f_seq}">관광지상세</a>
						</div>
					</div>
				</div>
				<div class="title">
					<div class="mtitle">관광지 상세</div>
					<div class="stitle">
						나를 아는 여행앱 &nbsp;
						<p class="stitle-p">Trippin'</p>
					</div>
				</div>
			</header>
            <div class="main">
            	<div class="btn-list">
            		<div class="btn-left">
		            	<c:if test="${tlist == null }">
		            		<input type="button" value="이용팁 등록" onclick="window.open('${cpath}/admin/tip/insertForm?f_seq=${tour.F_SEQ}','이용팁','width = 800px, height=600px, top=300px, left=300px, scrollbars=yes')">
		            	</c:if>
		            	<c:if test="${tlist != null }">
		            		<input type="button" value="이용팁 수정" onclick="window.open('${cpath}/admin/tip/updateForm?f_seq=${tour.F_SEQ}','이용팁','width = 800px, height=600px, top=300px, left=300px, scrollbars=yes')">
		            	</c:if>
	            	</div>
	            	<div  class="btn-right">
						<input type="button" value="정보 수정" onclick="location.href='${cpath}/admin/tour/updateForm?f_seq=${tour.F_SEQ }'">
			        	<input type="button" value="관광지 삭제" onclick="checkDeleteOk()">
						<input type="button" value="목록보기" onclick="location.href='${cpath}/admin/list?cate=1'">
			        </div>
            	</div>
                <div class="main-1">
                    <div class="m1-top">
                        <div class="m1t-tit">
                            <span>${tour.NAME }</span>
                        </div>
                        <div class="m1t-sc">
                            <div class="mltsc-1">
                                <div class="ml-sect">
                                    <div class="mlstar" style="width:${savg}%">
                                    </div>
                                </div>
                                <span><c:if test="${rvcnt != null }">${rvcnt }</c:if></span>
                            </div>
                            <div class="mltsc-2">
                                <img class= "ml2-img" src="https://assets.triple.guide/images/ico-save@4x.png">
                                <span>${tour.JJ }</span>
                            </div>
                        </div>
                        <div class="mlt-loca">
                            <img class= "mltl-img" src="https://assets.triple.guide/images/ico-end-location@3x.png">
                            <span class="mltl-text">${tour.ADDR2_NAME }</span>
                        </div>
                    </div>
                    <div class="m1-mid">
                    
                        <img style="width: 1148.87px;" src="${cpath }/Form/Tour/getMain_Img?f_seq=${tour.F_SEQ }&main_imgNM=${main_imgNM}">
                        
                    </div>
                    
                    <div>
						<input type="hidden" id="f_seq" value="${tour.F_SEQ }">
						<input type="hidden" id="lgcheck" value="${lgcheck }">
					</div>
                </div>
                <div class="main-2">
                    <div class="m2-top">
                        <div class="m2t-tit">
                            <span>${tour.INTRO }</span>
                        </div>
                    </div>
                    <div class="m2-mid">
                        <div class="m2m-text">
                            <span>${tour.INFO }</span>
                            <!-- <div class="sub-check">
                                <a href="#">
                                    <span>추천하는 관광지</span>
                                </a>
                            </div> -->
                        </div>
                        <br><br>
                    </div>
                </div>
                <div class="main-3">
                    <div class="m3-top">
                        <div class="m3t-tit">
                            <span>기본정보</span>
                        </div>
                        <div class="m3t-amend">
                            <a href="${pageContext.request.contextPath }/member/revision/form?f_seq=${tour.F_SEQ}">
                                정보수정 제안 〉
                            </a>
                        </div>
                    </div>
                    <div class="m3-mid">
                        <div class="m3m-map">
                            <div id="map" style="width:100%;height:350px;"></div>
                        </div>
                        <div class="m3m-mapinfo">
                            <div class="m3m-loca">
                                <span><b>주소</b></span> <a onclick="location.reload();" style="cursor: pointer;">${tour.ADDR }</a>
                            </div>
                            <c:if test="${tour.TEL != null}">
	                            <div class="m3m-tel">
	                                <span><b>전화</b></span> ${tour.TEL }
	                            </div>
                            </c:if>
                            <c:if test="${tour.WEBSITE != null}">
	                            <div class="m3m-page">
	                                <span><b>홈페이지</b></span> <a href="${tour.WEBSITE }" target="_blank">${tour.WEBSITE }</a>
	                            </div>
                            </c:if>
                        </div>
                    </div>
                    
                </div>
                <c:if test="${tour.WAY != null }">
	                <div class="main-4">
	                    <div class="m4-tit">
	                        <span>가는 방법</span>
	                    </div>
	                    <div class="m4-info">
	                        <span>${tour.WAY }</span>
	                    </div>
	                </div>
                </c:if>
                <c:if test="${!empty hlist || tour.RUN_INFO != null }">
                	<div class="main-5">
                		<div style="display: flex" id="today" onclick="detail()">
		                    <div class="m5-tit">
		                        <span>이용가능시간, 휴무일</span>
		                    </div>
		                    <div class="right-btn">〉</div>
		                </div>
		               	<c:if test="${!empty hlist }">
	                    <div>
	                    	<font color="#3691FF"><b>오늘&nbsp;&nbsp;
		                    	<c:forEach var="h" items="${hlist }">
		                    		<c:if test="${today == h.DAY_NAME }">
				                    	${h.TIME }
				                    	<c:if test="${h.HOURS_CATE_SEQ == 2 || h.HOURS_CATE_SEQ == 3}">
	                    					<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                    	</c:if>
				                    	<c:if test="${h.HOURS_CATE_SEQ % 2 == 1 && h.HOURS_CATE_SEQ != 3}">
				                    		~
				                    	</c:if>
				                    </c:if>
		                    	</c:forEach>
	                    	</b></font>
	                    	<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;〉 -->
	                    </div>
	                    <br>
	                    <div id="weektime">
	                    <br>
	                    	<c:forEach var="day" items="${daylist }">
	                    		• ${day.day_name }&nbsp;&nbsp;
		                    		<c:forEach var="h" items="${hlist }" varStatus="i">
		                    			<c:if test="${day.day_name == h.DAY_NAME }">
		                    				<%-- <c:if test="${h.HOURS_CATE_SEQ == 2 && (h.TIME < '12:00')}">
		                    					다음 날
		                    				</c:if> --%>
					                    		${h.TIME }
		                    				<c:if test="${h.HOURS_CATE_SEQ == 2 || h.HOURS_CATE_SEQ == 3}">
		                    					<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					                    	</c:if>
					                    	<c:if test="${h.HOURS_CATE_SEQ % 2 == 1 && h.HOURS_CATE_SEQ != 3}">
					                    		~
					                    	</c:if>
		                    			</c:if>
		                    		</c:forEach>
		                    		<br>
	                    	</c:forEach>
	                    </div>
		                </c:if>
		                <c:if test="${tour.RUN_INFO != null }">
			                <div class="m5-info">
			                    <span>${tour.RUN_INFO }</span>
			                     
			                </div>
		                </c:if>
		                 <c:if test="${tour.TERM_HOURS != null }">
			                <div class="m5-check">
			                    <button class="m5-btn" type="button" onclick="term();">기간별 운영시간 확인하기</button>
			                </div>
		                </c:if>
	                </div>
                </c:if>
                    
               
                <div class="main-6">
                	<c:choose>
						<c:when test="${tour.USE_FEE == null }">
		                    <div class="m6-tit">
		                        <span>이용료</span>무료
		                    </div>
		                </c:when>
						<c:otherwise>
		                    <div class="m6-tit">
		                        <span>이용료</span>유료
		                    </div>
		                    <div class="m6-info">
		                        <span>${tour.USE_FEE }</span>
		                    </div>
		                </c:otherwise>
					</c:choose>
                </div>
                <div class="main-7">
                    <div class="m7-tit">
                        <span>이곳의 이용팁</span>
                    </div>
                    <div class="m7-info">
                        <span>2023년 개장 일정</span>
                    </div>
                </div>
            </div>
            
		
		  <div class="main-6">
		  		<input type="hidden" id="filter" value="${filter }">
                <div class="t-m6-tit">
                    <h2>리뷰 <span><c:if test="${rvcnt != null }">${rvcnt }</c:if></span></h2>
                    <a href="${cpath }/member/review/write?f_seq=${tour.F_SEQ}"><img src="https://assets.triple.guide/images/btn-com-write@2x.png"></a>
                </div>
                <div class="t-m6-stit">
                    <div class="t-review-sel">
                        <div class="${filter == 1 || filter == null ? 'suggestz' : 'suggest' }" id="1" onclick="changeb(1)">
                            최신순
                        </div>
                        <div class="${filter == 0 ? 'suggestz' : 'suggest' }" id="0" onclick="changeb(0)">
                            추천순
                        </div>
                    </div>
                    <div class="mon6-sel">
                        <input type="checkbox" id="recentT" class="sel-check" onclick="recent()">
                        <span style="color : rgb(58, 58, 58); font-size : 14px;">최근 여행</span>
                        <img class="fast-img" onclick="addTip()" src="https://assets.triple.guide/images/ico_tooltip_info_black@4x.png">
                    </div>
                </div>
                <div class="sel-text" id="tip-add">
                    최근 6개월 내에 방문한 여행의 리뷰만 모아 볼 수 있습니다.
                    <div class="text-img">
                        <img onclick="XTip()" src="https://assets.triple.guide/images/ico_tooltip_delete.png">
                    </div>
                </div>
                
                <c:choose>
                	<c:when test="${empty rvlist }">
                		 <div class="review"><div class="rw-top" align="center">작성된 리뷰가 없습니다.</div></div>
                	</c:when>
                	<c:otherwise>
                		 <c:forEach var="rv" items="${rvlist }" varStatus="i">
                		 	<input type="hidden" name="rv_seq" id="rv_seq${i.count }" value="${rv.RV_SEQ }">
                		 	<c:if test="${rv.REPORT_STATUS == 0 }">
				                <div class="review${rv.recent }">
				                    <div class="rw-top">
				                        <div class="user-info">
				                            <div class="user-img">
				                            	<img src="${cpath}/common/getImg?path=${rv.M_PROFILE }&file=${rv.m_profileNM }" style="width:45px; height :45px; border-radius: 100%; cursor: pointer;" onclick="document.location.href='${cpath}/member/memberinfo?m_seq=${rv.M_SEQ }'"/>
				                            </div>
				                            <div class="user-detail">
				                                <div class="user-name"><a onclick="document.location.href='${cpath}/member/memberinfo?m_seq=${rv.M_SEQ }'" style="cursor: pointer; text-decoration: none; color: #000;">${rv.M_NICKNAME }</a></div>
				                                <div class="user-level">
				                                    <span>LEVEL${rv.M_LEVEL } /</span>
				                                    <span>${rv.MRV_CNT }개의 리뷰</span>
				                                </div>
				                            </div>
				                        </div>
				                    </div>
				                    <div class="rw-main">
				                        <div class="rw-ssea">
				                            <div class="rw-sect">
				                                <div class="rvstars">
					                                <c:forEach begin="1" end="${rv.STARS }" step="1">
					                                	<img src="https://yaimg.yanolja.com/joy/sunny/static/images/icon-score-yayellow-fill.svg"/>
					                                </c:forEach>
				                                </div>
				                            </div>
				                        </div>
				                        <c:if test="${!empty rv.date }">
					                        <div class="rw-date">
					                            <div class="date-area">
						                        	<c:if test="${rv.recent == 1}">
					                                	<div class="fast-date">
							                                <img class="date-img" src="https://assets.triple.guide/images/ico_recently_badge@4x.png"> 
							                                <span class="date-text1">최근 여행</span>
							                            </div>
						                            </c:if>
					                                <div class="real-date">
					                                	<span class="date-text2">${rv.year }년 ${rv.month }월 여행</span>
					                                </div>
					                            </div>
					                        </div>
				                        </c:if>
				                        <div class="rw-text" onclick="document.location.href='${cpath}/member/review/selectRV?rv_seq=${rv.RV_SEQ }'" style="cursor: pointer;">
				                            <span>${rv.CONTENT }</span>
				                        </div>
				                        <div class="rw-img" onclick="document.location.href='${cpath}/member/review/selectRV?rv_seq=${rv.RV_SEQ }'" style="cursor: pointer;">
				                            <div class="rwi-list">
				                                <div class="rwi-1">
				                                	<c:forEach var="ri" items="${rv.rv_imgNM }" varStatus="i">
				                                		<img src="${cpath}/common/getImg?path=${rv.RV_IMG }&file=${ri }">
				                                    </c:forEach>
				                                </div>
				                            </div>
				                        </div>
				                        <div class="rw-foot">
				                            <div class="foot-detail">
				                            	<c:choose>
				                            		<c:when test="${!rv.checkRVL }">
						                                <div class="f-good">
						                                    <img id="likebtn${rv.RV_SEQ }" src="https://assets.triple.guide/images/btn-lounge-thanks-off@3x.png">
						                                    <span id="rlcnt">${rv.RL_CNT }</span>
						                                </div>
					                                </c:when>
					                                <c:otherwise>
						                                <div class="f-good">
						                                    <img id="likebtn${rv.RV_SEQ }" src="${pageContext.request.contextPath }/resources/like/like.jpg">
						                                    <span id="rlcnt">${rv.RL_CNT }</span>
						                                </div>
					                                </c:otherwise>
				                                </c:choose>
				                                
				                                <span>·</span>
				                                <div class="f-comment">
				                                    <img src="https://assets.triple.guide/images/btn-lounge-comment-off@3x.png">
				                                    <span>${rv.RC_CNT }</span>
				                                </div>
				                            </div>
				                            <div class="foot-date">
				                                <div class="ft-date">
				                                    <span>${rv.YMD }</span>
				                                </div>
				                            </div>
				                        </div>
				                    </div>
				                </div>
			                </c:if>
			                <hr>
		                </c:forEach>
                	</c:otherwise>
                </c:choose>
            </div>
            
            
      
            
            
            
            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50a663b98a69e54c2f47df28be00018a&libraries=services"></script>
			<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = {
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };  
			
			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption); 
			
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			
			// 주소로 좌표를 검색합니다
			geocoder.addressSearch('${tour.ADDR}', function(result, status) {
			
			    // 정상적으로 검색이 완료됐으면 
			     if (status === kakao.maps.services.Status.OK) {
			
			        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			
			        // 결과값으로 받은 위치를 마커로 표시합니다
			        var marker = new kakao.maps.Marker({
			            map: map,
			            position: coords
			        });
			
			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        var infowindow = new kakao.maps.InfoWindow({
			            content: '<div style="width:150px;text-align:center;padding:6px 0;">${tour.NAME}</div>'
			        });
			        infowindow.open(map, marker);
			
			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
			    } 
			});    
			</script>
			
			<script type="text/javascript">
			
				function checkDeleteOk(){
					var confirmation = confirm("게시물을 삭제하시겠습니까?\r\n*관련된 정보 모두 삭제가 진행됩니다.")
					if (confirmation){
						location.href="${pageContext.request.contextPath }/admin/common/delete?f_seq=${tour.F_SEQ}";
					}else{
						return;
					}
				}
	
				function term(){
		    	
		        var url = "${cpath}/member/tour/term/f_seq/${tour.F_SEQ}";
		        var name = "term";
		        var option = "width = 900, height = 700, top = 100, left = 400, location = no";
		        window.open(url, name, option);
		     	}
				
				 
				function detail(){
					const weektime = document.getElementById("weektime");
					
					if(weektime.style.display == 'none'){
						weektime.style.display = 'block';
					}else{
						weektime.style.display = 'none';
						
					}
					
				}
				
	
                function changeF(item){

                    const cN = document.querySelectorAll('.m3-listz');
                    
                    const mId = document.getElementById(item);
                    const mC = mId.className;
                    if(mC !='m3-listz'){
                        mId.className = 'm3-listz';            
                    }else{
                        mId.className = 'm3-list';
                    }
                 
                }

                
                function changeb(v){
                	
                	var f_seq = document.getElementById("f_seq").value;
               		let url = `${cpath}/member/tour/selectTour?f_seq=`+f_seq+`&filter=`+v;
               		location.replace(url);
                }
                
                
                function recent(){
                	var recentT = document.getElementById("recentT");
                	var rv0 = document.querySelectorAll(".review0");
                	var rv1 = document.querySelectorAll(".review1");

                	if(recentT.checked){
                		for(let i = 0; i < ${rvlist.size() }; i++){
		                	rv0.className.style.display = 'none';
		                	rv1.style.display = 'block';
                		}
                	}else{
                		for(let i = 0; i < ${rvlist.size() }; i++){
                			rv0.style.display = 'block';
		                	rv1.style.display = 'block';
                		}
                	}
                }
                
                
			</script>
			
            
        </body>
    </html>