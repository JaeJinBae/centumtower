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
	.contentMain{
		width:100%;
		margin:20px auto;
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
		background: #efefef;
	}
	.tableWrap > table tr:last-child{
		border-bottom:2px solid gray;
	}
	.tableWrap > table td{
		text-align: left;
		font-size:14px;
		padding:10px 15px;
		overflow: hidden;
	}
	.tableWrap > table td >.contentInfoUl{
		float: left;
	}
	.tableWrap > table td > .contentInfoUl > li{
		float:left;
		margin-right:20px;
		color: #797a7d;
		font-size:13px;
	}
	.innerContent{
		padding:20px 20px !important;
	}
	.tableWrap > table tr:last-child td, p, a, span, ul, ol, li, dl, dt, dd, table, th, fieldset, legend, input,h1,h2,h3,h4{
		font-size:inherit;
	}
	.tableWrap > table td >h1{
		font-size:18px;
	}
	.golist{
		width:100%; 
		text-align: right;
		margin-top:20px;
		padding:0 10px;
		margin-bottom:50px;
	}
	.golist a{
		display:inline-block;
		width:48px;
		height:30px;
		background: gray;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
		text-align: center;
		line-height: 30px;
	}
	.golist a:hover{
		color:#111111;
		font-weight:bold;
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
		
		$("#f1").submit(function(){			
			var name=$("input[name='name']").val();
			
			var call1=$("input[name='call1']").val();
			var call2=$("input[name='call2']").val();
			var call3=$("input[name='call3']").val();
			var callTotal=call1+"-"+call2+"-"+call3;
			$("input[name='call']").val(callTotal);
			var call=$("input[name='call']").val();
			
			var mail1=$("input[name=mail1]").val();
			var mail2=$("input[name=mail2]").val();
			var mailTotal=mail1+"@"+mail2;
			$("input[name=mail]").val(mailTotal);
			var mail=$("input[name=mail]").val();
			
			
			
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
						
			return false;
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
							<a href="#none">고객센터<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
							<ul class="sub_subDropdown">
								<li><a href="${pageContext.request.contextPath}/mMenu01_01">사업개요</a></li>
								<li><a href="${pageContext.request.contextPath}/mMenu02_01">투자가치</a></li>
								<li><a href="${pageContext.request.contextPath}/mMenu03_01">층별안내</a></li>
							</ul>
						</li>
						<li>
							<a href="#none">공지사항<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
							<ul class="sub_subDropdown">
								<li><a href="${pageContext.request.contextPath}/mMenu04_01">관심고객등록</a></li>
								<li><a href="${pageContext.request.contextPath}/mMenu04_03">언론보도</a></li> 
							</ul>	
						</li>
					</ul>
				</div><!-- navWrap end -->
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
					<p class="golist"><a href="${pageContext.request.contextPath}/mMenu04_02${pageMaker.makeSearch(pageMaker.cri.page)}">목 록</a></p>
				</div><!-- content end -->
			</div><!-- contentMain end -->
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<img src="${pageContext.request.contextPath}/resources/images/mobilefooter.jpg">
	</footer>
</body>
</html>