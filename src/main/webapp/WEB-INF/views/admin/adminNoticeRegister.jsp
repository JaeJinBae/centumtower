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
				<h3 class="boardTitle">공지사항관리</h3>
				<form id="form1" method="post" action="adminNoticeRegister">
					<div id="container">
						<p>작성자: <input type="text" name="writer" value="관리자"></p>
						<br> 
						<div id="header">
							<span>제목:</span>
							<input id="title" type="text" name="title">
						</div>
						
						<textarea id="editor1" name="content">
						    
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