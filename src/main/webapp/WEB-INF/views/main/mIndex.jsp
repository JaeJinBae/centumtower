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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-rwdImageMaps/1.6/jquery.rwdImageMaps.min.js"></script>
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
	.mainBanner{
		position: relative;
		width:100%;
		height:504px;
		overflow:hidden;
		z-index: 10;
	}
	.mainBannerImgWrap{
		width:100%;
	}
	.mainBannerImgWrap > .mainBannerBg{
		width:100%;
	}
	.mainBannerImgWrap > .mainBannerTxt1{
		display:none;
		width:90px;
		position: absolute;
		top:20px;
		left:13px; 
	}
	.mainBannerImgWrap > .mainBannerTxt2{
		display:none;
		width:90px;
		position:absolute;
		top:20px;
		left:145px;
	}
	.mainBannerImgWrap > .mainBannerTxt3{
		display:none;
		width:90px;
		position:absolute;
		top:20px;
		right:6px;
	}
	.mainBannerImgWrap > .mainBannerTxt4{
		display:none;
		width:240px;
		position:absolute;
		top:55px;
		right:-5px;
	}
	.mainContentWrap{
		width:100%;
		margin:0 auto;
	}
	.mainContent01{
		width:100%;
		margin:0 auto;
	}
	.mainContent01 > img{
		width:100%;
	}
	
	
	.mainContent02{
		width:100%; 
		margin:0 auto;
		background:#fafafa;
		/* padding:60px 0; */
	}
	.mainContent02SliderWrap{
		width:100%;
		margin:0 auto;
	}
	.mainContent02Slider{
		width:100%;
		margin:0 auto;
	}
	.slick-dots{
		bottom:4px;
	}
	.mainContent03{
		width:100%;
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
		background: #383838;
	}
	footer > img{
		width:100%;
	}
</style>
<script>
	$(function(){
		$(".mainBannerTxt1").fadeIn(800,function(){ 
			$(".mainBannerTxt2").fadeIn(800,function(){
				$(".mainBannerTxt3").fadeIn(800,function(){
					$(".mainBannerTxt4").fadeIn(800);
				});
			});
		});
		
		//이벤트 이미지맵 반응형
		$('img[usemap]').rwdImageMaps();
		
		//mainContent02 slider
		$(".mainContent02Slider").slick({
			arrows:false,
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
<body id="main">
	<header>
		<jsp:include page="../include/mHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="mainBanner">
			<div class="mainBannerImgWrap">
				<img class="mainBannerBg" src="${pageContext.request.contextPath}/resources/images/mobileMainBanner.png">
				<img class="mainBannerTxt1" src="${pageContext.request.contextPath}/resources/images/mobileMainBannerTxt1.png">
				<img class="mainBannerTxt2" src="${pageContext.request.contextPath}/resources/images/mobileMainBannerTxt2.png">
				<img class="mainBannerTxt3" src="${pageContext.request.contextPath}/resources/images/mobileMainBannerTxt3.png">
				<img class="mainBannerTxt4" src="${pageContext.request.contextPath}/resources/images/mobileMainBannerTxt4.png">
				
			</div><!-- mainBannerImgWrap end -->
		</div><!-- mainBanner end -->
		<div class="mainContentWrap">
			<div class="mainContent01">
				<img class="mainBannerTxt4" src="${pageContext.request.contextPath}/resources/images/mobileMainContent01.png" usemap="#mobileMainContent01">
				<map id="mobileMainContent01" name="mobileMainContent01">
					<area shape="rect" alt="" title="" coords="78,243,236,279" href="${pageContext.request.contextPath}/mMenu02_01" target="" />
					<area shape="rect" alt="" title="" coords="397,243,557,280" href="${pageContext.request.contextPath}/mMenu03_01" target="" />
					<area shape="rect" alt="" title="" coords="78,561,238,595" href="${pageContext.request.contextPath}/mMenu01_02" target="" />
					<area shape="rect" alt="" title="" coords="401,559,560,595" href="${pageContext.request.contextPath}/mMenu04_01" target="" />
				</map>
			</div><!-- mainContent01 end -->
			<div class="mainContent02">
				<div class="mainContent02SliderWrap">
					<div class="mainContent02Slider">
						<img src="${pageContext.request.contextPath}/resources/images/mobileMainContent02Slider1.jpg">
						<img src="${pageContext.request.contextPath}/resources/images/mobileMainContent02Slider2.jpg">
						<img src="${pageContext.request.contextPath}/resources/images/mobileMainContent02Slider3.jpg">
					</div>
				</div>
			</div><!-- mainContent02 end -->
			<div class="mainContent03">
				<div class="mainContent03ImgWrap">
					<img src="${pageContext.request.contextPath}/resources/images/mobileMainContent3Img.png">
				</div>
			</div><!-- mainContent03 end -->
		</div><!-- mainContentWrap end -->
	</section>
	<footer>
		<img src="${pageContext.request.contextPath}/resources/images/mobilefooter.jpg">
	</footer>
</body>
</html>