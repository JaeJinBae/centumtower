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
		color:#006fbd;
		font-weight: bold;
	}
	/* .subMidSmallUl > li:last-child > a{
		color:#006fbd;
		font-weight: bold;
	} */
	.contentWrap{
		width:1100px;
		margin:0 auto;
	}
	.contentTopImgWrap{
		width:100%;
		margin:70px 0;
	}
	.contentTopImgWrap > img{
		width:100%;
	}
	.contentMain{
		width:100%;
	}
	.contentMenuWrap{
		width:100%;
		margin-bottom:150px;
	}
	.contentMenuWrap > ul{
		width:791px;
		margin:0 auto;
		overflow: hidden;
	}
	.contentMenuWrap > ul > li{
		float: left;
	}
	.contentMenuWrap > ul > li:nth-child(2){
		border-right:1px solid lightgray;
		border-left:1px solid lightgray;
	}
	.content{
		width:100%;
	}
	.content > img{
		width:100%;
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
		
		$(".contentMenuWrap > ul > li").click(function(){
			var index=$(this).index();
			
			for(var i=0; i<3; i++){
				$(".contentMenuWrap > ul > li").eq(i).find("img").attr("src","${pageContext.request.contextPath}/resources/images/sub03_content_menu_floor"+(i+1)+".png");
			}
			
			if(index==0){
				$(".contentMenuWrap > ul > li").eq(0).find("img").attr("src","${pageContext.request.contextPath}/resources/images/sub03_content_menu_floor1_1.png");
				$(".content > img").attr("src","${pageContext.request.contextPath}/resources/images/sub03_content_floor1.png");
			}else if(index==1){
				$(".contentMenuWrap > ul > li").eq(1).find("img").attr("src","${pageContext.request.contextPath}/resources/images/sub03_content_menu_floor2_1.png");
				$(".content > img").attr("src","${pageContext.request.contextPath}/resources/images/sub03_content_floor2.png");
			}else if(index==2){
				$(".contentMenuWrap > ul > li").eq(2).find("img").attr("src","${pageContext.request.contextPath}/resources/images/sub03_content_menu_floor3_1.png");
				$(".content > img").attr("src","${pageContext.request.contextPath}/resources/images/sub03_content_floor3.png");
			}
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
					<li><p>층별안내</p></li>
					<li>
						<ul class="subMidSmallUl">
							<li><a href="">MD구성</a></li>
							<!-- <li><a href="">층별도면</a></li> -->
						</ul>
					</li>
				</ul>
			</div><!-- subMidContent end -->
		</div><!-- subMidWrap end -->
		<div class="contentWrap">
			<div class="contentTopImgWrap">
				<img src="${pageContext.request.contextPath}/resources/images/sub03_content_top_img.png">
			</div><!-- contentTopImgWrap end -->
			<div class="contentMain">
				<div class="contentMenuWrap">
					<ul>
						<li><a href="#none"><img src="${pageContext.request.contextPath}/resources/images/sub03_content_menu_floor1_1.png"></a></li>
						<li><a href="#none"><img src="${pageContext.request.contextPath}/resources/images/sub03_content_menu_floor2.png"></a></li>
						<li><a href="#none"><img src="${pageContext.request.contextPath}/resources/images/sub03_content_menu_floor3.png"></a></li>
					</ul>
				</div><!-- contentMenuWrap end -->
				<div class="content">
					<img src="${pageContext.request.contextPath}/resources/images/sub03_content_floor1.png">
				</div>
			</div><!-- contentMain end -->
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<img src="${pageContext.request.contextPath}/resources/images/pcfooter.jpg">
	</footer>
</body>
</html>