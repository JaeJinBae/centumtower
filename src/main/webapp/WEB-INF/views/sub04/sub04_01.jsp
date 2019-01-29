<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>센텀타워</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<style>
	body{
		position: relative;
	}
	header{
		width:100%;
		min-width:1100px;
		background: #033c60;
		position: absolute;
		top:0; 
		z-index: 99;
	}
	section{
		width:100%;
		min-width:1100px; 
		padding-top:115px;
	}
	.subTopBanner{
		position: relative;
		width:100%;
		height:360px;
		overflow:hidden;
		z-index: 10;
	}
	.subTopImgWrap{
		position: absolute;
		right:50%;
		top:0; 
		margin-right:-1000px;
		width:2000px;
		z-index: 10;
	}
	.subTopImgWrap > .subTopBg{
		width:100%;
	}
	.subTopImgWrap > .subTopTxt{
		display:none;
		width:1100px;
		height:67px;
		position: absolute;
		top: 50%;
		left: 50%;
		margin-top: -34px; /* Half the height */
		margin-left: -550px; /* Half the width */
	}
	.subMidWrap{
		width:100%;
		border:2px solid lightgray;
	}
	.subMidContent{
		width:1100px;
		margin:0 auto;
	}
	.subMidBigUl{
		overflow: hidden;
	}
	.subMidBigUl > li{
		float:left;
		border-left:2px solid lightgray;
		height:70px;
		line-height: 68px;
	}
	.subMidBigUl > li:first-child > a{
		display: block;
		margin:0 20px;
		margin-top:18px;
	}
	.subMidBigUl > li:first-child > a > img{
		width:30px;
	}
	.subMidBigUl > li > p{
		font-size:23px;
		font-weight: bold;
		margin:0 35px;
	}
	.subMidSmallUl{
		overflow: hidden;
	}
	.subMidSmallUl > li{
		float:left;
	}
	.subMidSmallUl > li > a{
		font-size:20px;
		margin-left:30px;
		/* color:#006fbd;
		font-weight: bold; */
	}
	.subMidSmallUl > li:first-child > a{
		color:#006fbd;
		font-weight: bold;
	}
	.contentWrap{
		width:1100px;
		margin:100px auto;
	}
	.contentMain{
		width:100%;
	}
	.content{
		width:100%;
	}
	.agreeWrap{
		width:100%;
		padding:15px;
		border:1px solid lightgray;
	}
	.agreeTitle{
		font-size:17px;
		font-weight: 600;
	} 
	.scrollBox{
		font-size:15px;
		margin:15px;
		padding:10px 0;
		width:97%;
		height:250px;
		overflow: scroll;
		overflow-x:hidden;
	}
	.agreeBtnWrap{
		width:100%;
		margin:10px 0;
	}
	.agreeBtnWrap > label{
		font-size:14px;
		margin-right:10px;
	}
	.agreeBtnWrap > label > input[type='radio']{
		vertical-align: middle;
	}
	.tblWrap{
		width:100%;
		margin: 50px 0 35px 0; 
	}
	.tblWrap > table{
		width:100%;
		border-top: 2px solid #737373;
	    border-collapse: collapse;
	    border-spacing: 0;
	    table-layout: fixed;
	}
	.tblWrap > table th{
		width:200px;
		line-height: 20px;
	    color: #333;
	    font-weight: bold;
	    text-align: center;
	    border-bottom: 1px solid #e4e4e4;
	    background: #f9f9f9;
	    font-family: 'NanumGothicRegular';
	    padding: 10px 0 10px 0;
	    font-size:15px
	}
	.tblWrap > table td{
		line-height: 20px; 
	    border-bottom: 1px solid #e4e4e4;
	    color: #666666;
	    padding: 10px 0 10px 0;
	    text-align: left;
    	padding-left: 10px;
    	width:85%;
	}
	.tblWrap > table td > input{
		border: 1px solid #cccccc;
		padding: 0 5px 0 5px;
		height:24px;
		line-height: 24px;
		vertical-align: middle;
		font-size:15px;
	}
	input[name='call1']{
		width:50px;
	}
	input[name='call2'], input[name='call3']{
		width:100px;
	}
	.btnWrap{
		text-align: center;
	}
	.btnSubmit{
		width: 95px;
	    height: 40px;
	    line-height: 40px;
	    text-align: center;
	    background: #004a8f;
	    color: #fff;
	    cursor: pointer;
	    border: none;
	    font-family: 'NotoSansKRMedium';
	    font-size: 16px;
	}
	.btnReset{
		width: 95px;
	    height: 40px;
	    background: #e5edf4;
	    color: #004a8f;
	    cursor: pointer;
	    border: none;
	    font-family: 'NotoSansKRMedium';
	    font-size: 16px;
	}
	footer{
		width:100%;
		background: #383838;
		text-align: center;
	}
	footer > img{
		width:1024px;
		
	}
</style>
<script>
	$(function(){
		$(".subTopTxt").fadeIn(2000);
		
		$("#f1").submit(function(){			
			var name=$("input[name='name']").val();
			
			var call1=$("input[name='call1']").val();
			var call2=$("input[name='call2']").val();
			var call3=$("input[name='call3']").val();
			var callTotal=call1+"-"+call2+"-"+call3;
			$("input[name='phone']").val(callTotal);
			var call=$("input[name='phone']").val();
			
			var mail1=$("input[name=mail1]").val();
			var mail2=$("input[name=mail2]").val();
			var mailTotal=mail1+"@"+mail2;
			$("input[name=email]").val(mailTotal);
			var mail=$("input[name=email]").val();
			
			
			
			if(name=="" || name==null){
				alert("이름을 입력해주세요.");
				return false;
			}
			if(call1=="" || call1==null || call2=="" || call2==null || call3=="" || call3==null){
				alert("전화번호를 정확하게 입력해주세요.");
				return false;
			}
			if(mail1=="" || mail1==null || mail2=="" || mail2==null){
				alert("이메일을 정확하게 입력해주세요.");
				return false;
			}
			
			console.log("이름: "+name+", 전화번호: "+call+", 메일: "+mail);
			alert("관심고객등록이 완료되었습니다.\n앞으로의 안내사항이 입력하신 정보로 발송됩니다.");
		});
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../include/pcHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="subTopBanner">
			<div class="subTopImgWrap">
				<img class="subTopBg" src="${pageContext.request.contextPath}/resources/images/sub03_top_img.png">
				<img class="subTopTxt" src="${pageContext.request.contextPath}/resources/images/sub03_top_txt2.png">
			</div><!-- subTopImgWrap end -->
		</div><!-- subTopBanner end -->
		<div class="subMidWrap">
			<div class="subMidContent">
				<ul class="subMidBigUl">
					<li><a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/subMidHomeIcon.png"></a></li>
					<li><p>고객센터</p></li>
					<li>
						<ul class="subMidSmallUl">
							<li><a href="${pageContext.request.contextPath}/sub04_01">관심고객등록</a></li>
							<li><a href="${pageContext.request.contextPath}/sub04_02">공지사항</a></li>
							<li><a href="${pageContext.request.contextPath}/sub04_03">언론보도</a></li>
						</ul>
					</li>
				</ul>
			</div><!-- subMidContent end -->
		</div><!-- subMidWrap end -->
		<div class="contentWrap">
			<div class="contentMain">
				<div class="content">
					<form id="f1" action="customerRegister" method="post">
						<div class="agreeWrap">
							<p class="agreeTitle">개인정보 수집 및 이용동의</p>
							<div class="scrollBox">
								센텀타워는 고객님의 개인정보를 중요시하며, ＂정보통신망 이용촉진 및 정보보호＂에 관한 법률을 준수하고 있습니다. <br> 
								회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.<br>
								회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.<br>
								<br><br>
								
								ο 본 방침은 : 2019 년 02 월 07 일 부터 시행됩니다.<br><br>
								
								■ 수집하는 개인정보 항목<br>
								회사는 관심고객등록, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br>
								ο 수집항목 : 이름, 이메일, 전화번호, 거주지 주소<br>
								ο 개인정보 수집방법 : 홈페이지(관심고객등록)<br><br>
								
								■ 개인정보의 수집 및 이용목적<br>
								회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br>
								ο 마케팅상담(문자,이메일,전화,DM발송) 및 정보안내등<br><br>
								
								■ 개인정보의 보유 및 이용기간<br>
								회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.<br>
								Ο 보유 및 이용기간 : 프로젝트 종료 또는 개인정보 수집 및 이용목적 달성시까지<br><br>
								
								■ 개인정보의 파기절차 및 방법<br>
								회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다.<br>
								ο 파기절차 : 별도 DB 이관 후 일정 기간 저장 후 파기<br>
								ο 파기방법 : 종이 출력 정보 - 분쇄 또는 소각, 전자 파일 정보 - 재생 불가능한 기술 방법 사용<br>
							</div><!-- scrollBox end -->
						</div><!-- agreeWrap end -->
						<p class="agreeBtnWrap">
							<label>
								<input type="radio" name="agreeBox" title="개인정보수집 및 이용동의 선택란" value="y">개인정보수집 및 이용동의합니다.
							</label>
							<label>
								<input type="radio" name="agreeBox" title="개인정보수집 및 이용동의 선택란" value="n">동의하지 않습니다.
							</label>
						</p>
						<div class="tblWrap">
							<table>
								<tr>
									<th>이름</th>
									<td><input type="text" name="name"></td>
								</tr>
								<tr>
									<th>전화번호</th>
									<td><input type="text" name="call1" id="call1">&nbsp;&nbsp;-&nbsp;&nbsp;<input type="text" name="call2" id="call2">&nbsp;&nbsp;-&nbsp;&nbsp;<input type="text" name="call3" id="call3"></td>
									<td><input type="hidden" name="phone" value=""></td>
								</tr>
								<tr>
									<th>이메일</th>
									<td><input type="text" name="mail1" id="mail1">&nbsp;&nbsp;@&nbsp;&nbsp;<input type="text" name="mail2" id="mail2"></td>
									<td><input type="hidden" name="email" value=""></td>
								</tr>
							</table>
						</div>
						<div class="btnWrap">
							<input class="btnSubmit" type="submit" value="신청">
							<input class="btnReset" type="reset" value="취소">
						</div>
					</form>
				</div><!-- content end -->
			</div><!-- contentMain end -->
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<img src="${pageContext.request.contextPath}/resources/images/pcfooter.jpg">
	</footer>
</body>
</html>