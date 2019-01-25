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
		border-top:2px solid gray;
	}
	.tableWrap > table tr{
		display:inline-block;
		width:100%;
		border-bottom:1px solid #e3e3e3;
		padding-left:5px;
	}
	.tableWrap > table td{
		text-align: left;
		font-size:14px;
		display:inline-block;
		margin:7px 0;		
	}
	.tableWrap > table tr td:nth-child(1){
		width:8%;
	}
	.tableWrap > table tr td:nth-child(2){
		width:89%;
		text-align: left;
		padding-left:10px;
		overflow:hidden;
		white-space:nowrap;
		text-overflow:ellipsis;
		font-size:16px;
	}
	.tableWrap > table tr td:nth-child(3){
		padding-right:7px;
		font-size:13px;
		color: #797a7d;
	}
	.tableWrap > table tr td:nth-child(4){
		border-left:2px solid lightgray;
		border-right:2px solid lightgray;
		padding:0 7px;
		font-size:13px;
		color: #797a7d;
	}
	.tableWrap > table tr td:nth-child(5){
		padding-left:7px;
		font-size:13px;
		color: #797a7d;
	}
	.page{
		clear:both;
		width:100%; 
		margin:50px auto; 
	}
	.page > ul{
		text-align: center;
	}
	.page ul li{
		width:26px;
		height:29px;
		margin:0 auto;
		list-style: none;
		display: inline-block;
		text-align:center;
		border:1px solid #e9e9e9;
	}
	.active1{
		background: gray;
	}
	.active2{
		font-weight: bold;
		color:white;
	}
	.page ul li a{
		font-size:1.1em;
		line-height: 29px;
	}
	#searchBtn{
		width:50px;
		height:24px;
		background: gray;
		color:white;
		border:none;
		border-radius: 3px;
		font-size:15px;
	}
	.searchWrap{
		text-align: center;
		margin-bottom:50px;
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
		
		//익스플로러에서 한글 검색 후 read로 넘어갈 때 인코딩 문제 아래와 같이 해결
		$(".title > a").click(function(e){
			e.preventDefault();
			var bno=$(this).parent().parent().find(".bno").text();
			var s=$("select[name='searchType']").val();
    		var searchType = encodeURIComponent(s);
			var k=$("input[name='keyword']").val();
    		var keyword = encodeURIComponent(k);
    		location.href="mNoticeRead${pageMaker.makeQuery(pageMaker.cri.page)}&searchType="+searchType+"&keyword="+keyword+"&bno="+bno;
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
							<c:choose>
						    <c:when test="${fn:length(list) == 0}">
					        	<tr>
					        		<td colspan="5" style=" text-align: center;">등록된 게시물이 없습니다.</td>
					        	</tr>
						    </c:when>
						    <c:otherwise>
						        <c:forEach var="item" items="${list}">
									<tr>
										<td class="bno">${item.bno}</td>
										<td class="title"><a href="${pageContext.request.contextPath}/mNoticeRead${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}">${item.title}</a></td>
										<td>작성자: ${item.writer}</td>
										<td>등록일: <fmt:formatDate type="date" value="${item.regdate}"/></td>
										<td>조회: ${item.cnt}</td>
									</tr>	
								</c:forEach>
						    </c:otherwise> 
						</c:choose>
						</table>
						<div class="page">
							<ul>
								<c:if test="${pageMaker.prev}">
									<li><a href="${pageMaker.makeSearch(pageMaker.startPage-1) }">&laquo;</a></li>
								</c:if>
								
								<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
									<li ${pageMaker.cri.page == idx? 'class=active1':''}><a href="${pageMaker.makeSearch(idx)}" ${pageMaker.cri.page == idx? 'class=active2':''}>${idx}</a></li>
								</c:forEach>
								
								<c:if test="${pageMaker.next}">
									<li><a href="${pageMaker.makeSearch(pageMaker.endPage+1)}">&raquo;</a></li>
								</c:if>
								
							</ul>
						</div><!-- page end -->
						<div class="searchWrap">
							<select name="searchType">
								<option value="n">선택해주세요.</option>
								<option value="t" ${cri.searchType=='t'?'selected':''}>제목</option>
								<option value="c" ${cri.searchType=='b'?'selected':''}>번호</option>
							</select> 
							<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}">
							<button id="searchBtn">검색</button>
						</div>
					</div><!-- tableWrap end -->
				</div><!-- content end -->
			</div><!-- contentMain end -->
		</div><!-- contentWrap end -->
	</section>
	<footer>
		<img src="${pageContext.request.contextPath}/resources/images/mobilefooter.jpg">
	</footer>
</body>
</html>