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
	.tableWrap{
		width:100%;
		margin:0 auto;
	}
	.tableWrap > table{
		width:100%;
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
		padding:10px 25px;
		overflow: hidden;
	}
	.tableWrap > table td >.contentInfoUl{
		float: left;
	}
	.tableWrap > table td > .contentInfoUl > li{
		float:left;
		margin-right:20px;
	}
	.innerContent{
		padding:20px 25px !important;
	}
	.tableWrap > table tr:last-child td, p, a, span, ul, ol, li, dl, dt, dd, table, th, fieldset, legend, input,h1,h2,h3,h4{
		font-size:inherit;
	}
	.tableWrap > table td >h1{
		font-size:25px;
	}
	.btnDiv{
		text-align: right;
		margin-top:20px;
	}
	.btnDiv > a > button{
		border: 0;
	    background: gray;
	    color: #fff;
	    border-radius: 3px;
	    width: 40px;
	    height:30px;
	    font-size:15px;
	}
</style>
<script>
	$(function(){
		$(".url").click(function(e){
			e.preventDefault(); 
			var url=$(this).prop("href");
			window.open(url);
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
				<div class="tableWrap">
						<table>
							<tr>
								<td><h1>[${item.company}] ${item.title}</h1></td>
							</tr>
							<tr>
								<td>
									<ul class="contentInfoUl">
										<li><span>작성자 : </span>${item.writer}</li>
										<li><span>조회 : </span>${item.cnt}</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td>언론사 : ${item.company}</td>
							</tr>
							<tr>
								<td>URL : <a class="url" href="${item.url}">${item.url}</a></td>
							</tr>
						</table>
						<p class="btnDiv">
							<a href="${pageContext.request.contextPath}/admin/adminNews${pageMaker.makeSearch(pageMaker.cri.page)}"><button>목록</button></a>
							<a href="${pageContext.request.contextPath}/admin/adminNewsUpdate${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}"><button>수정</button></a>
							<a href="${pageContext.request.contextPath}/admin/adminNewsDelete${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${item.bno}"><button>삭제</button></a>
						</p>
					</div><!-- tableWrap end -->
			</div><!-- centerMenu end -->
		</div><!-- contentWrap -->
	</section>
</body>
</html>