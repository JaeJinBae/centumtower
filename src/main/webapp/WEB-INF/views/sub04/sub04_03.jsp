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
	.subMidSmallUl > li:last-child > a{
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
	.tableWrap > table tr:first-child{
		border-top:2px solid #e3e3e3;
		border-bottom:2px solid gray;
	}
	.tableWrap > table th{
		font-size:16px;
		padding:12px 5px;
		background: #efefef;
	}
	.tableWrap > table th:first-child{
		width:50px;
	}
	.tableWrap > table th:nth-child(2){
		width:535px;
	}
	.tableWrap > table th:nth-child(3){
		width:60px;
	}
	.tableWrap > table th:nth-child(4){
		width:90px;
	}
	.tableWrap > table th:last-child{
		width:55px;
	}
	.tableWrap > table td{
		text-align: center;
		font-size:14px;
		padding:10px 5px;
		border-bottom:1px solid #e3e3e3;
	}
	.tableWrap > table tr td:nth-child(2){
		text-align: left;
		padding-left:10px;
		overflow:hidden;
		white-space:nowrap;
		text-overflow:ellipsis;
	}
	.page{
		clear:both;
		width:626px; 
		margin:70px auto;
		margin-bottom:50px;
	}
	.page > ul{
		text-align: center;
	}
	.page ul li{
		width:45px;
		height:40px;
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
		line-height: 40px;
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
		text-align: center;
	}
	footer > img{
		width:1024px;
		
	}
</style>
<script>
	$(function(){
		$(".subTopTxt").fadeIn(2000);
		
		//게시판 검색
        $("#searchBtn").click(function(){
        	var s=$("select[name='searchType']").val();
    		var searchType = encodeURIComponent(s);
    		var k=$("input[name='keyword']").val();
    		var keyword = encodeURIComponent(k);
    		location.href="sub04_03${pageMaker.makeQuery(1)}&searchType="+searchType+"&keyword="+keyword;
    	});
		
		/* $(document).on('click','.tableWrap .title > a', function(e){
			e.preventDefault(); 
			var url=$(this).prop("href");
			alert(url);
			window.open("http://www.naver.com");
		}); */
		
		$(".tableWrap .title > a").click(function(e){
			e.preventDefault(); 
			var url=$(this).prop("href");
			window.open(url);
		})
		
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
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
							</tr>
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
										<td class="title"><a href="${item.url }">[${item.company}] ${item.title}</a></td>
										<td>${item.writer}</td>
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
		<img src="${pageContext.request.contextPath}/resources/images/pcfooter.jpg">
	</footer>
</body>
</html>