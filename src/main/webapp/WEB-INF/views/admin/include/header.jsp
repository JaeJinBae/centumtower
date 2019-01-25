<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	#headerDiv{
		width:100%;
		min-width:1200px;
		color:skyblue;
		background: #2f2f2f;
	}
	#headerDiv #logo{
		width:300px;
		height:80px;
		color:white;
		line-height: 80px;
		margin-left: 30px;
		position:  relative;
	}
	#headerDiv #logo h2 {
	    font-size: 25px;
	    font-weight: bold;
	    letter-spacing: 3px;
	    color:#fff;
	}
	#headerDiv>.gohome{
		position: absolute;
		right:50px;
		top:35px;
		color:white;
		font-size:15px;
	}
	.gohome:hover{
		font-weight:600;
	}
	#headerDiv #headerMenu{
		width:100%;
		min-width:1024px;
		height:40px;
		background: #4f4f4f;
	}
	#headerDiv #headerMenu ul{
		width:980px;
		line-height: 38px;
		margin-left:30px;
	}
	#headerDiv #headerMenu>ul>li{
		list-style: none;
		width:130px;
		display:inline-block;
		text-align:center;
		float:left;
	}
	#headerDiv #headerMenu > ul > li a{
		width:128px;
		color:white;
		font-weight:bold;
		text-decoration: none;
		display: inline-block;
		font-size:20px;
	}
	#headerDiv #headerMenu>ul>li a:hover{
		background: white;
		color:black;
	}
</style>
<script>
	$(function(){
		
		
	});
</script> 
<div id="headerDiv">
	<div id="logo">
		<h2>ADMINISTRATOR</h2>
	</div>
	<a class="gohome" href="${pageContext.request.contextPath}/admin/logout">로그아웃</a>
	<div id="headerMenu"> 
		<ul>
			<%-- <li><a href="${pageContext.request.contextPath}/admin/" title="게시판 관리" id="boardCtr">고객센터 관리</a></li> --%>
			<li><a href="${pageContext.request.contextPath}/admin/">고객센터관리</a></li>
		</ul>
	</div>
</div>