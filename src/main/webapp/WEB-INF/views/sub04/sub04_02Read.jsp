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
	}
	.subMidSmallUl > li:nth-child(2) > a{
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
	.tableWrap{
		width:100%;
		margin:0 auto;
	}
	.tableWrap > table{
		width:95%;
		margin:0 auto;
	}
	.tableWrap > table tr{
		border-bottom:2px solid #e3e3e3;
	}
	.tableWrap > table tr:first-child{
		border-top:2px solid gray;
		border-bottom:2px solid #e3e3e3;
	}
	.tableWrap > table tr:last-child{
		border-bottom:2px solid gray;
	}
	.tableWrap > table td{
		text-align: left;
		font-size:14px;
		padding:10px 25px;
		overflow: hidden;
	}
	.tableWrap > table td >.contentInfoUl{
		float:right;
	}
	.tableWrap > table td > .contentInfoUl > li{
		float:left;
		margin-right:20px;
	}
	.innerContent{
		padding:20px 25px !important;
	}
	.tableWrap > table tr:last-child td, p, a, span, ul, ol, li, dl, dt, dd, table, th, fieldset, legend, input,h1,h2,h3,h4{
		font-size:inherit;
	}
	.tableWrap > table td >h1{
		font-size:25px;
	}
	.golist{
		width:100%; 
		text-align: right;
		margin-top:20px;
		padding:0 30px;
		margin-bottom:50px;
	}
	.golist a{
		display:inline-block;
		width:60px;
		height:39px;
		background: gray;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:17px;
		text-align: center;
		line-height: 39px;
	}
	.golist a:hover{
		color:#111111;
		font-weight:bold;
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
					<div class="tableWrap">
						<table>
							<tr>
								<td><h1>${item.title}</h1></td>
							</tr>
							<tr>
								<td>
									<ul class="contentInfoUl">
										<li><span>작성자 : </span>${item.writer}</li>
										<li><span>작성일 : </span><fmt:formatDate type="date" value="${item.regdate}"/></li>
										<li><span>조회 : </span>${item.cnt}</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td class="innerContent">${item.content}</td>
							</tr>
						</table>
					</div><!-- tableWrap end -->
					<p class="golist"><a href="${pageContext.request.contextPath}/sub04_02${pageMaker.makeSearch(pageMaker.cri.page)}">목 록</a></p> 
				</div><!-- content end -->
			</div><!-- contentMain end -->
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<img src="${pageContext.request.contextPath}/resources/images/pcfooter.jpg">
	</footer>
</body>
</html>