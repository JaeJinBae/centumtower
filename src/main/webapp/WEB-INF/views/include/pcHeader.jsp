<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.mHeaderWrap{
		display:none;
	}
	.headerWrap{
		width:100%;
		position: relative;
	}
	.whiteBack{
		width:100%;
		height:115px;
		background: #fff;
		position: absolute;
		top:0;
		z-index: 99;
	}
	.mainMenuWrap{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
		position: relative;
		z-index: 999;
	}
	.mainMenuUl{
		width:100%;
		overflow:hidden;
	}
	.mainMenuUl > li{
		float:left;
		width:120px;
		text-align: center;
		padding-top:45px;
	}
	.mainMenuUl > li > a{
		display:block;
		font-size:20px;
		font-weight:600;
		margin-bottom:47px;
		color: #5E5E5E;
	}
	.mainMenuUl > li:first-child{
		width:320px;
		padding-top:33px;
	}
	.logoDiv{
		width:100%;
		text-align: left;
		margin-bottom:23px;
	}
	.logoWrap > .logoDiv > a{
		display:block;
		width:210px;
	}
	.logoWrap > .logoDiv > a > img{
		width:100%;
	}
	.mainMenuUl > li:hover > a{
		color:black;
	}
	.subMenuWrap{
		display:none;
		width:100%;
		padding-top:10px;
	}
	.subMenuCallInfo{
		display:none;
		float:left;
		margin:35px 15px;
		text-align: center;
	}
	.subMenuCallInfo > p{
		font-size:16px;
		font-weight:600;
		color:lightgray;
		line-height:25px;
	}
	#bigtxt{
		font-size:20px;
		font-weight:bold;
	}
	.subMenuCallInfo > p:nth-child(2){
		margin-bottom:10px;
	}
	.subMenuCallInfo > h1{
		font-weight: bold;
		color:#ff6d00;
	}
	.subMenuUl{
		padding:23px 0;
	}
	.subMenuUl > li{
		margin-bottom:25px;
	}
	.subMenuUl > li > a{
		font-size:17px;
		color:#e1e1e1;
	}
	.subMenuUl > li > a:hover{
		font-weight:bold !important;
	}
	.mainMenuUl >li:last-child{
		width:255px;
		height:88px;
		padding-top:36px;
		margin-left:45px;
		overflow: hidden;
	}
	.mainMenuUl >li:last-child > p{
		font-size:16px;
		font-weight:600;
		float:left;
		margin-top:10px;
	}
	.mainMenuUl > li:last-child > .call_txt{
		font-size:28px;
		font-weight: 600;
		float:left;
		margin-top:3px;
		margin-left:3px;
		color:#006fbd;
	}
</style>
<script>
$(function(){
	$(".mainMenuUl>li>a.mMenu").mouseenter(function(){
        $(".subMenuWrap").stop(true,true).slideDown();
    });
    $(".mainMenuUl").mouseleave(function(){
        $(".subMenuWrap").stop(true,true).slideUp();
    });
    $(".logoDiv").mouseenter(function(){
        $(".subMenuWrap").stop(true,true).slideUp();
    });
    $(".menuIcon").click(function(){
        $(".menuBg").css({"display":"block"});
    });
    $(".closebtn").click(function(){
        $(".menuBg").css({"display":"none"});
    });
});
</script>
<div class="pcHeaderWrap">
	<div class="whiteBack">
		
	</div>
	<div class="mainMenuWrap">
		<ul class="mainMenuUl">
			<li class="logoWrap">
				<div class="logoDiv">
					<a href="${pageContext.request.contextPath}/">
						<img src="${pageContext.request.contextPath}/resources/images/logo.png">
					</a>
				</div>
				<div class="subMenuWrap">
					<div class="subMenuCallInfo">
					<p>지속적인 인구유입과 정주여건 인프라로</p>
					<p>투자의 확신을 더 하다 <span id="bigtxt"></span></p>
					<h1>1577-1234</h1>
					<h1>053-123-4567</h1>
				</div><!-- subMenuCallInfo -->
				</div>
			</li>
			<li>
				<a class="mMenu" href="#none">사업개요</a>
				<div class="subMenuWrap">
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/sub01_01">사업개요</a></li>
						<li><a href="${pageContext.request.contextPath}/sub01_02">오시는길</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a class="mMenu" href="#none">투자가치</a>
				<div class="subMenuWrap">
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/sub02_01">미래가치</a></li>
						<li><a href="${pageContext.request.contextPath}/sub02_02">상권가치</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a class="mMenu" href="#none">층별안내</a>
				<div class="subMenuWrap">
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/sub03_01">MD구성</a></li>
						<%-- <li><a href="${pageContext.request.contextPath}/sub03_02">층별도면</a></li> --%>
					</ul>
				</div>
			</li>
			<li>
				<a class="mMenu" href="#none">고객센터</a>
				<div class="subMenuWrap">
					<ul class="subMenuUl">
						<li><a href="${pageContext.request.contextPath}/sub04_01">관심고객등록</a></li>
						<li><a href="${pageContext.request.contextPath}/sub04_02">공지사항</a></li>
						<li><a href="${pageContext.request.contextPath}/sub04_03">언론보도</a></li>
					</ul>
				</div>
			</li>
			<li>
				<p>문의전화</p>
				<h3 class="call_txt">053-123-4567</h3>
			</li>
		</ul>
	</div><!-- mainMenuWrap end -->
</div>