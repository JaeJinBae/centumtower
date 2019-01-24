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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
	body{
		position: relative;
	}
	header{
		position: relative;
		z-index: 99;
	}
	section{
		width:100%;
	}
	section{
		width:100%;
	}
	.subTopBanner{
		position: relative;
		width:100%;
		height:180px;
		overflow:hidden;
		z-index: 10;
	}
	.subTopImgWrap{
		position: absolute;
		right:50%;
		top:0; 
		margin-right:-500px;
		width:1000px;
		z-index: 10;
	}
	.subTopImgWrap > .subTopBg{
		width:100%;
	}
	.subTopImgWrap > .subTopTxt{
		display:none;
		width:300px;
		height:107px;
		position: absolute;
		top: 50%;
		left: 50%;
		margin-top: -53px; /* Half the height */
		margin-left: -150px; /* Half the width */
	}
	.subMidWrap{
		width:100%;
	}
	.subMidContent{
		width:100%;
		margin:0 auto;
	}
	.navWrap{
		width:100%;
		height:45px;
		clear:both;
		background: #033c60;
		position: relative;
		z-index: 10;
	}
	.navWrap .navUl{
		width:100%;
		margin:0 auto;
	}
	.navWrap .navUl > li{
		height:45px;
		border-left:1px solid #31506c;
		float:left;
		text-align: center;
	}
	.navWrap .navUl > li:last-child{
		width:45%;
		text-align: left;
	}
	.navWrap .navUl > li a{  
		font-size: 17px;
		color:white;
		line-height: 45px;
		margin:0 15px;
	}
	.navWrap .navUl > li:first-child{
		text-align: center;
	}
	.navWrap .navUl > li:last-child{
		border-right:1px solid #31506c;
	}
	.navWrap .navUl > li:first-child a > img{
		margin-top:10px;
	}
	.navWrap .navUl > li a > .btnArrow{
		margin-left:25px; 
		margin-right:10px;
		margin-top:14px;
		float:right;
		width:20px;
	}
	.navWrap .navUl > li:last-child a > .btnArrow{
		margin-left:15px;
	}
	.sub_subDropdown{
		display: none;
		background: #2e465b;
	} 
	.sub_subDropdown > li{
		text-align: left;
		border-bottom:1px solid lightgray;
	}
	.sub_subDropdown > li a{
		height:40px; 
		line-height: 40px !important;
		font-size: 16px !important;
	}
	.sub_subDropdown > li a:hover{
		font-weight: bold;
	}
	.navWrap .navUl > li:hover > .sub_subDropdown {
		display: block;
	}
	.contentWrap{
		width:100%;
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
		margin-bottom:70px;
	}
	.contentMenuWrap > ul{
		width:100%;
		margin:0 auto;
		overflow: hidden;
	}
	.contentMenuWrap > ul > li{
		float: left;
		width:33.33%;
	}
	.contentMenuWrap > ul > li > a{
		width:100%;
	}
	.contentMenuWrap > ul > li > a > img{
		width:100%;
	}
	.contentMenuWrap > ul > li:nth-child(2){
		border-right:1px solid lightgray;
		border-left:1px solid lightgray;
	}
	.content{
		width:100%;
		margin-bottom:70px;
	}
	.content > img{
		width:100%;
	}
	footer{
		width:100%;
		background: #383838;
	}
	footer > img{
		width:100%;
	}
</style>
<script>
	$(function(){
		$(".subTopTxt").fadeIn(2000);
		
		$(".contentMenuWrap > ul > li").click(function(){
			var index=$(this).index();
			
			for(var i=0; i<3; i++){
				$(".contentMenuWrap > ul > li").eq(i).find("img").attr("src","${pageContext.request.contextPath}/resources/images/mobileSub03_content_menu_floor"+(i+1)+".png");
			}
			
			if(index==0){
				$(".contentMenuWrap > ul > li").eq(0).find("img").attr("src","${pageContext.request.contextPath}/resources/images/mobileSub03_content_menu_floor1_1.png");
				$(".content > img").attr("src","${pageContext.request.contextPath}/resources/images/sub03_content_floor1.png");
			}else if(index==1){
				$(".contentMenuWrap > ul > li").eq(1).find("img").attr("src","${pageContext.request.contextPath}/resources/images/mobileSub03_content_menu_floor2_1.png");
				$(".content > img").attr("src","${pageContext.request.contextPath}/resources/images/sub03_content_floor2.png");
			}else if(index==2){
				$(".contentMenuWrap > ul > li").eq(2).find("img").attr("src","${pageContext.request.contextPath}/resources/images/mobileSub03_content_menu_floor3_1.png");
				$(".content > img").attr("src","${pageContext.request.contextPath}/resources/images/sub03_content_floor3.png");
			}
		});
	});
</script>
</head>
<body id="main">
	<header>
		<jsp:include page="../include/mHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="subTopBanner">
			<div class="subTopImgWrap">
				<img class="subTopBg" src="${pageContext.request.contextPath}/resources/images/sub03_top_img.png">
				<img class="subTopTxt" src="${pageContext.request.contextPath}/resources/images/mobileSub03_top_txt2.png">
			</div><!-- subTopImgWrap end -->
		</div><!-- subTopBanner end -->
		<div class="subMidWrap">
			<div class="subMidContent">
				<div class="navWrap">
					<ul class="navUl"> 
						<li><a href="${pageContext.request.contextPath}/"><img class="btnHome" src="${pageContext.request.contextPath}/resources/images/home.png"></a></li>
						<li>
							<a href="#none">층별안내<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
							<ul class="sub_subDropdown">
								<li><a href="${pageContext.request.contextPath}/#none">사업개요</a></li>
								<li><a href="${pageContext.request.contextPath}/#none">투자가치</a></li>
								<li><a href="${pageContext.request.contextPath}/#none">고객센터</a></li>
							</ul>
						</li>
						<li>
							<a href="#none">MD구성<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
							<ul class="sub_subDropdown">
								<%-- <li><a href="${pageContext.request.contextPath}/#none">MD구성</a></li> --%>
							</ul>	
						</li>
					</ul>
				</div><!-- navWrap end -->
			</div><!-- subMidContent end -->
		</div><!-- subMidWrap end -->
		<div class="contentWrap">
			<div class="contentTopImgWrap">
				<img src="${pageContext.request.contextPath}/resources/images/mobileSub03_content_top_img.png">
			</div><!-- contentTopImgWrap end -->
			<div class="contentMain">
				<div class="contentMenuWrap">
					<ul>
						<li><a href="#none"><img src="${pageContext.request.contextPath}/resources/images/mobileSub03_content_menu_floor1_1.png"></a></li>
						<li><a href="#none"><img src="${pageContext.request.contextPath}/resources/images/mobileSub03_content_menu_floor2.png"></a></li>
						<li><a href="#none"><img src="${pageContext.request.contextPath}/resources/images/mobileSub03_content_menu_floor3.png"></a></li>
					</ul>
				</div><!-- contentMenuWrap end -->
				<div class="content">
					<img src="${pageContext.request.contextPath}/resources/images/sub03_content_floor1.png">
				</div>
			</div><!-- contentMain end -->
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<img src="${pageContext.request.contextPath}/resources/images/mobilefooter.jpg">
	</footer>
</body>
</html>