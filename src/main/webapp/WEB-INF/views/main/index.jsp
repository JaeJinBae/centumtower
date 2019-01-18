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
	.mainBanner{
		position: relative;
		width:100%;
		/* height:750px; */
		height:795px;
		overflow:hidden;
		z-index: 10;
	}
	.mainBannerImgWrap{
		position: absolute;
		left:0;
		top:0; 
		/* margin-left:-1000px; */
		width:2000px;
		z-index: 10;
	}
	.mainBannerImgWrap > .mainBannerBg{
		width:100%;
	}
	.mainBannerImgWrap > .mainBannerTxt1{
		display:none;
		width:510px;
		position: absolute;
		top:62px;
		left:724px;
	}
	.mainBannerImgWrap > .mainBannerTxt2{
		display:none;
		width:300px;
		position:absolute;
		top:318px;
		left:860px;
	}
	.mainBannerTxt3{
		width:1042px;
		height:139px;
		position: absolute;
		bottom: 0;
		left: 50%;
		/* margin-top: -69.5px; */ /* Half the height */
		margin-left: -521px; /* Half the width */
		z-index: 10;
	}
	.mainContentWrap{
		width:100%;
		margin:0 auto;
	}
	.mainContent01{
		width:1103px;
		margin:0 auto;
		padding:40px 0;
	}
	.mainContent01 > ul{
		width:100%;
		overflow: hidden;
	}
	.mainContent01 > ul > li{
		float:left;
		border-right:1px solid lightgray;
		width:275px;
	}
	.mainContent01 > ul > li:last-child{
		border:0;
	}
	.mainContent01 > ul > li > a > img{
		width:100%;
	}
	
	.mainContent02{
		width:100%; 
		margin:0 auto;
		background:#fafafa;
		padding:60px 0;
	}
	.mainContent02SliderWrap{
		width:1103px;
		margin:0 auto;
	}
	.mainContent02Slider{
		width:900px;
		/* width:100%; */
		margin:0 auto;
	}
	.slick-prev{
		left:-100px !important;
	}
	.slick-next{
		right:-100px !important;
	}
	.slick-prev:before, .slick-next:before{
		font-size:80px;
	}
	.slick-prev, .slick-next{
		width:80px;
		height:80px;
		padding-top:7px;
	}
	.mainContent03{
		width:1103px;
		margin:0 auto;
	}
	.mainContent03ImgWrap{
		width:100%;
	} 
	.mainContent03ImgWrap > img{
		width:100%;
	}
	
	footer{
		width:100%;
		/* height:200px; */
		background: #383838;
		text-align: center;
	}
	footer > img{
		width:1024px;
		
	}
</style>
<script>
	$(function(){
		$(".mainBannerTxt1").fadeIn(2000,function(){ 
			$(".mainBannerTxt2").fadeIn(800);
		});
		
		//mainContent02 slider
		$(".mainContent02Slider").slick({
			arrows:true,
			infinite:true,
			speed:500,
			fade:true,
			cssEase:'linear',
			autoplay:true,
			autoplaySpeed:4000,
			dots:true,
		});	
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../include/pcHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="mainBanner">
			<div class="mainBannerImgWrap">
				<img class="mainBannerBg" src="${pageContext.request.contextPath}/resources/images/mainBanner.png">
				<img class="mainBannerTxt1" src="${pageContext.request.contextPath}/resources/images/mainBannerTxt1.png">
				<img class="mainBannerTxt2" src="${pageContext.request.contextPath}/resources/images/mainBannerTxt2.png">
				
			</div><!-- mainBannerImgWrap end -->
			<img class="mainBannerTxt3" src="${pageContext.request.contextPath}/resources/images/mainBannerTxt3.png">
		</div><!-- mainBanner end -->
		<div class="mainContentWrap">
			<div class="mainContent01">
				<ul>
					<li><a href="#none"><img src="${pageContext.request.contextPath}/resources/images/mainBox1.jpg"></a></li>
					<li><a href="${pageContext.request.contextPath}/sub03_02"><img src="${pageContext.request.contextPath}/resources/images/mainBox2.jpg"></a></li>
					<li><a href="#none"><img src="${pageContext.request.contextPath}/resources/images/mainBox3.jpg"></a></li>
					<li><a href="#none"><img src="${pageContext.request.contextPath}/resources/images/mainBox4.jpg"></a></li>
				</ul>
			</div><!-- mainContent01 end -->
			<div class="mainContent02">
				<div class="mainContent02SliderWrap">
					<div class="mainContent02Slider">
						<img src="${pageContext.request.contextPath}/resources/images/mainContent02Slider1.png">
						<img src="${pageContext.request.contextPath}/resources/images/mainContent02Slider2.jpg">
						<img src="${pageContext.request.contextPath}/resources/images/mainContent02Slider3.jpg">
					</div>
				</div>
			</div><!-- mainContent02 end -->
			<div class="mainContent03">
				<div class="mainContent03ImgWrap">
					<img src="${pageContext.request.contextPath}/resources/images/mainContent3Img.png">
				</div>
			</div><!-- mainContent03 end -->
		</div><!-- mainContentWrap end -->
	</section>
	<footer>
		<img src="${pageContext.request.contextPath}/resources/images/pcfooter.jpg">
	</footer>
</body>
</html>