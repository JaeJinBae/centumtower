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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditorFull/ckeditor.js"></script>
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
	.leftMenu > ul > li:nth-child(3) > a{
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
	.tblWrap{
		width:100%;
		margin: 28px 0 35px 0; 
	}
	.tblWrap > table{
		width:100%;
		border-top: 2px solid #737373;
	    border-collapse: collapse;
	    border-spacing: 0;
	    table-layout: fixed;
	}
	.tblWrap > table th{
		width:150px;
		line-height: 20px;
	    color: #333;
	    font-weight: bold;
	    text-align: center;
	    border-bottom: 1px solid #e4e4e4;
	    background: #f9f9f9;
	    font-family: 'NanumGothicRegular';
	    padding: 10px 0 10px 0;
	    font-size:15px
	}
	.tblWrap > table td{
		line-height: 20px; 
	    border-bottom: 1px solid #e4e4e4;
	    color: #666666;
	    padding: 10px 0 10px 0;
	    text-align: left;
    	padding-left: 10px;
    	width:85%;
	}
	.tblWrap > table td > input{
		width:95%;
		border: 1px solid #cccccc;
		padding: 0 5px 0 5px;
		height:24px;
		line-height: 24px;
		vertical-align: middle;
		font-size:15px;
	}
	input[name='writer']{
		width:100px !important;
	}
	input[name='company']{
		width:200px !important;
	}
	.btnWrap{
		text-align: center;
	}
	.btnSubmit{
		border: 0;
	    background: gray;
	    color: #fff;
	    border-radius: 3px;
	    width: 45px;
	    height:30px;
	    font-size:15px;
	}
	.btnReset{
		border: 0;
	    background: gray;
	    color: #fff; 
	    border-radius: 3px;
	    width: 45px;
	    height:30px;
	    font-size:15px;
	}
	.btnPrev > button{
		border: 0;
	    background: gray;
	    color: #fff;
	    border-radius: 3px;
	    width: 45px;
	    height:30px;
	    font-size:15px;
	}
</style>
<script type="text/javascript">
	$(function(){
		//게시판 검색
        $("#searchBtn").click(function(){
    		var searchType=$("select[name='searchType']").val();
    		var keyword=$("input[name='keyword']").val();
    		location.href="adminNotice${pageMaker.makeQuery(1)}&searchType="+searchType+"&keyword="+keyword;
    	});
        //예외처리
    	$("#form1").submit(function(){

    		if($("input[name='writer']").val()==""||$("input[name='writer']").val()==null){
    			alert("작성자를 입력해주세요.");
    			return false;
    		}else if($("input[name='title']").val()==""||$("input[name='title']").val()==null){
    			alert("제목을 입력해주세요.");
    			return false;
    		}
    	})
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
					<li> <a href="${pageContext.request.contextPath}/admin/">- 관심고객관리</a></li> 
					<li> <a href="${pageContext.request.contextPath}/admin/adminNotice">- 공지사항</a></li>
					<li> <a href="${pageContext.request.contextPath}/admin/adminNews">- 언론보도</a></li>
				</ul>
			</div>
			<div class="centerMenu">
				<h3 class="boardTitle">언론보도관리</h3>
				<form id="form1" method="post" action="adminNewsRegister">
					<div class="tblWrap">
						<table>
							<tr>
								<th>제목</th>
								<td><input type="text" name="title"></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><input type="text" name="writer" value="관리자"></td>
							</tr>
							<tr>
								<th>언론사</th>
								<td><input type="text" name="company"></td>
							</tr>
							<tr>
								<th>URL</th> 
								<td><input type="text" name="url" placeholder="ex) http://www.naver.com"></td>
							</tr>
						</table>
					</div>
					<div class="btnWrap">
						<input class="btnSubmit" type="submit" value="등 록">
						<input class="btnReset" type="reset" value="취 소">
						<a class="btnPrev" type="button" href="${pageContext.request.contextPath}/admin/adminNews${pageMaker.makeSearch(pageMaker.cri.page)}"><button type="button">이 전</button></a>
					</div>
				</form>
			</div><!-- centerMenu end -->
		</div><!-- contentWrap end -->
	</section>
	
</body>
</html>