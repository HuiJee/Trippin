<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/member/mypage/layout/header.jsp"%>
<style>
	.box{
		border: 1px solid;
	}
	.content_area{
		text-align: center;
		display: flex;
	}
	.copyImg{
		width: 9%;
	}
	.shareImg{
		width: 9%;
	}
</style>

	<div class="box">
		<div class="title">
			나의 추천 코드
		</div>
		<div class="content_area">
			<div class="content">
				${mvo.m_code }
			</div>
			<div class="copyBtn">
				<img class="copyImg" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOuTY29I7dLJFZehORs0YQb7pSw8UxMaL-qQ&usqp=CAU">
			</div>
			<div class="shareBtn">
				<img class="shareImg" src="data:image/png;base64,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">
			</div>
		</div>
	</div>


<%@ include file="/WEB-INF/views/member/mypage/layout/footer.jsp"%>