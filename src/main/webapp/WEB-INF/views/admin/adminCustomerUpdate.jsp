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
	.formTag{
		width:100%;
	}
	.tblWrap > table{
		width:100%;
		border-top: 2px solid #737373;
	    border-collapse: collapse;
	    border-spacing: 0;
	    table-layout: fixed;
	}
	.tblWrap > table th{
		width:200px;
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
		border: 1px solid #cccccc;
		padding: 0 5px 0 5px;
		height:24px;
		line-height: 24px;
		vertical-align: middle;
		font-size:15px;
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
		/* $("#formTag").submit(function(){
			var regdate=$("input[name='regdate']").val();
			var date=new Date(regdate);
			
			alert(date);
			return false;
		}); */
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
				<form id="formTag" action="adminCustomerUpdate" method="post">
					<div class="tblWrap">
						<input type="hidden" value="${pageMaker.cri.page}" name="page">
						<input type="hidden" value="${pageMaker}" name="pageMaker"> 
						<input type="hidden" value="${item.mno}" name="mno">
						<table>
							<tr>
								<th>이름</th>
								<td><input type="text" name="name" value="${item.name}"></td>
							</tr>
							<tr>
								<th>전화번호</th>
								<td><input type="text" name="phone" value="${item.phone}"></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><input type="text" name="email" value="${item.email}"></td>
							</tr>
							<%-- <tr>
								<th>등록일</th>
								<td><input type="text" name="regdate" value="<fmt:formatDate type='date' value='${item.regdate}'/>" readonly style="background:#f1f1f1;"></td>
							</tr> --%>
						</table>
						<div class="btn">
							<input type="submit" value="저장">
							<a href="${pageContext.request.contextPath}/admin/adminCustomer"><button type="button">이전</button></a>
						</div>
					</div><!-- tblWrap end -->
				</form>
			</div><!-- centerMenu end -->
		</div>
	</section>
</body>
</html>