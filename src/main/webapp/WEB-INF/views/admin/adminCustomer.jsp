<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>센텀타워 관리자모드</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
	body{
		min-width:1200px;
	}
	header{
		width:100%;
	}
	section{
		width:100%;
		min-width:1200px;
		height:100%;
	}
	.contentWrap{
		width:100%;
		height:100%;
		overflow:hidden;
	}
	.leftMenu{
		float:left;
		width:250px;
		height:100%;
		background: #efefef;
		border-right:3px solid gray;
	}
	.leftMenu > h2{
		text-align: center;
		font-weight: bold;
		font-size:28px;
		padding: 25px 0;
		border-bottom:3px solid gray;
	}
	.leftMenu > ul{
		width:130px;
		margin:20px auto;
	}
	.leftMenu > ul > li{
		margin:10px 0;
	}
	.leftMenu > ul > li > a{
		font-size:20px;
	}
	.leftMenu > ul > li:first-child > a{
		font-weight: bold;
	}
	.centerMenu{
		float:left;
		width:950px;
		padding:30px 0px;
		padding-left:50px;
	}
	.centerMenu > h3{
		font-size:20px;
		margin-bottom:20px;
	}
	.tableWrap{
		width:100%;
	}
	.tableWrap > table{
		width:100%;
		border-top:1px solid lightgray;
	}
	.tableWrap > table tr{
		width:100%;
		border-bottom:1px solid lightgray;
	}
	.tableWrap > table tr:first-child{
		background: #efefef;
	}
	.tableWrap > table tr th{
		font-size:16px;
		padding:10px 0;
		font-weight:bold;
	}
	.th1{
		width:45px;
	}
	.th2{
		width:100px;
	}
	.th3{
		width:170px;
	}
	.th4{
		width:200px;
	}
	.th5{
		width:150px;
	}
	.th6{
		width:100px;
	}
	.tableWrap > table tr td{
		text-align: center;
		font-size:17px;
		padding:10px 0;
	}
	.tableWrap > table tr td:nth-child(2){
		padding:10px 15px !important;
	}
	.tableWrap > table tr td:last-child > a > button{
		font-size:17px;
	}
	.tableWrap > table tr td:last-child > a:hover > button{
		font-weight:bold;
	}
	.registerBtn{
		width:100%;
		text-align: right;
	}
	.registerBtn > a{
		
	}
	.registerBtn > a > button{
		/* width:60px;
		height:30px; */
		background: gray;
		color:#fff;
		font-size:15px;
		margin-top:20px;
		padding: 8px 13px;
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
		padding:12px;
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
</style>
<script type="text/javascript">
	$(function(){ 
		//게시판 검색 
        $("#searchBtn").click(function(){
        	var s=$("select[name='searchType']").val();
    		var searchType = encodeURIComponent(s);
    		var k=$("input[name='keyword']").val();
    		var keyword = encodeURIComponent(k);
    		location.href="adminCustomer${pageMaker.makeQuery(1)}&searchType="+searchType+"&keyword="+keyword;
    	});
		
	});
</script>
</head> 
<body>
	<header>
		<jsp:include page="include/header.jsp"/>
	</header>
	<section>
		<div class="contentWrap">
			<div class="leftMenu">
				<h2>&lt; 고객센터관리 &gt;</h2>
				<ul>
					<li> <a href="${pageContext.request.contextPath}/admin/adminCustomer">- 관심고객관리</a></li> 
					<li> <a href="${pageContext.request.contextPath}/admin/adminNotice">- 공지사항</a></li>
					<li> <a href="${pageContext.request.contextPath}/admin/adminNews">- 언론보도</a></li>
				</ul>
			</div>
			<div class="centerMenu"> 
				<h3 class="boardTitle">관심고객관리</h3>
				<div class="tableWrap">
					<table>
						<tr class="tbl_header">
							<th class="th1">번호</th>
							<th class="th2">이름</th>
							<th class="th3">전화번호</th>
							<th class="th4">이메일</th> 
							<th class="th5">등록일</th>
							<th class="th6">비고</th>
						</tr>
						<c:choose>
						    <c:when test="${fn:length(list) == 0}">
					        	<tr>
					        		<td colspan="6" style=" text-align: center;">등록된 게시물이 없습니다.</td>
					        	</tr>
						    </c:when>
						    <c:otherwise>
						        <c:forEach var="item" items="${list}">
									<tr>
										<td>${item.mno}</td>
										<td class="title">${item.name}</td>
										<td>${item.phone}</td>
										<td>${item.email}</td>
										<td><fmt:formatDate type="date" value="${item.regdate}"/></td>
										<td>
											<a href="${pageContext.request.contextPath}/admin/adminCustomerUpdate${pageMaker.makeSearch(pageMaker.cri.page)}&mno=${item.mno}"><button>수정</button></a>
											&nbsp;|&nbsp;
											<a href="${pageContext.request.contextPath}/admin/adminCustomerDelete${pageMaker.makeSearch(pageMaker.cri.page)}&mno=${item.mno}"><button>삭제</button></a>
										</td>
									</tr>	
								</c:forEach>
						    </c:otherwise> 
						</c:choose>
					</table>
					<!-- <p class="registerBtn"><a href="#none"><button>엑셀 다운</button></a></p> -->
					<form id="f1" method="post" action="excelDown">
						<input type="submit" value="등록일순 엑셀 다운">
					</form>
					<form id="f1" method="post" action="excelDown">
						<input type="submit" value="이름순 엑셀 다운">
					</form>
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
					<div class="box-body" style="text-align:center;">
						<select name="searchType">
							<option value="n">선택해주세요.</option>
							<option value="t" ${cri.searchType=='t'?'selected':''}>제목</option>
							<option value="c" ${cri.searchType=='c'?'selected':''}>내용</option>
							<option value="r" ${cri.searchType=='r'?'selected':''}>작성일</option>
						</select> 
						<input type="text" name="keyword" id="keywordInput" value="${cri.keyword}">
						<button id="searchBtn">검색</button>
					</div>
				</div><!-- tbl_board -->
			</div><!-- centerMenu end -->
		</div>
	</section>
</body>
</html>