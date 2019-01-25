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
	.leftMenu > ul > li:nth-child(2) > a{
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
	
	/* 공지사항 */
	.tbl_board{
		width:90%;
		height:700px;
		margin:0 auto;
		padding-top:30px;
		position:relative;
	}
	.tbl_board table{
		width:800px;
		margin:0 auto;
		border-collapse: collapse; 
	}
	.tbl_board table .tbl_header th{
		border-top:2px solid #e3e3e3;
		border-bottom:2px solid #5c4530;
		padding:8px 13px;
		font-size:15px;
	}
	.tbl_board table .tbl_header th:nth-child(2){
		width:400px;
	}
	.tbl_board table td{
		padding:8px 13px;
		border-bottom:1px solid #e3e3e3;
		font-size:15px;
	}
	.tbl_board table td a{
		font-size:15px;
	}
	.tbl_board table tr:not(first-child) td:nth-child(2){
		text-align: left;
	}
	.tbl_board table td:not(.title){
		text-align: center;
	}
	.replyCnt{
		font-weight: 600;
	}
	.title>a:hover{
		color:red;
	}
	.title>img{
		width:12px;
	}
	/* 글쓰기 */
	#container{
		width:900px;
		margin:0 auto;
	}
	#header{
		width:100%;
		margin-bottom:30px;
	}
	#title{
		width:50%;
		line-height: 20px;
	}
	
	.btn{
		width:300px;
		height:40px;
		font-size: 1.2em;
		margin:0 auto;
		margin-top:40px;
		margin-bottom:50px;
		text-align: center;
	}
	.btn > input{
		border: 0;
	    background: gray;
	    color: #fff;
	    border-radius: 3px;
	    width: 40px;
	    height:30px;
	    font-size:15px;
	}
	.btn > a > button{
		border: 0;
	    background: gray;
	    color: #fff;
	    border-radius: 3px;
	    width: 40px;
	    height:30px;
	    font-size:15px;
	}
	
</style>
<script type="text/javascript">
	$(function(){
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
				<h3 class="boardTitle">공지사항관리</h3>
				<form id="form1" method="post" action="adminNoticeUpdate">
					<div id="container">
						<input type="hidden" value="${pageMaker.cri.page}" name="page">
						<input type="hidden" value="${pageMaker}" name="pageMaker"> 
						<input type="hidden" value="${item.bno}" name="bno">
						<p>작성자: <input type="text" name="writer" value="관리자"></p>
						<br> 
						<div id="header">
							<span>제목:</span>
							<input id="title" type="text" name="title" value="${item.title}">
						</div>
						
						<textarea id="editor1" name="content">
						    ${item.content}
						</textarea>
						<script>
							CKEDITOR.replace('content',{filebrowserUploadUrl:"/admin/imgUpload",height:500});
						</script>
						<div class="btn">
							<input type="submit" value="저장">
							<a href="${pageContext.request.contextPath}/admin/adminNotice"><button type="button">이전</button></a>
						</div>
					</div>
				</form>
			</div><!-- centerMenu end -->
		</div><!-- contentWrap end -->
	</section>
</body>
</html>