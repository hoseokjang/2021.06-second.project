<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="../top.jsp" %>

<style>
	#third #side_menu
	{
		position:absolute;
		width:150px;
		left:400px;
		background:white;
		text-align:center;
	}
	#third #side_menu_box
	{
		position:relative;
		margin:auto;
		width:150px;
		border: 2px solid #E4E4E4;
	}
	#third #side_menu_list
	{
		padding:10px 5px 10px 5px;
	}
	#third #side_menu_list a
	{
		display:block;
		color:black;
	}
	#third #intro_title{padding-top:40px;padding-bottom:30px;}
	#third #intro_content1{padding:20px 0 20px 0;}
	#third #intro_content1_text{text-align:center;padding-bottom:20px;}
	#third #intro_content2{padding:20px 0 20px 0;}
	#third #intro_content2_text{text-align:center;padding-bottom:20px;}
</style>


<div align="center" id="third">
	<div id ="side_menu">
		<div id="side_menu_box">
			<div id="side_menu_list" style="border-bottom: 2px solid #E4E4E4;"><a href="introduce">사이트 소개</a></div>
			<div id="side_menu_list"><a href="useway">이용 방법</a></div>
		</div>
	</div>
	<div align="center" id="intro_title">
		<h2><strong>Health Life</strong></h2>
	</div>
	
	<div align="center" id="intro_content1">
		<div id="intro_content1_text"><h5><strong>Health Life</strong>는 여러분의 건강을 최우선으로 생각합니다.</h5></div>
		<img src="resources/img/intro1.jpg" width="650"> 
	</div>
	<div align="center" id="intro_content2">
		<div id="intro_content2_text"><h5><strong>For Happy!! For Healthy!!</strong></h5></div>
		<img src="resources/img/intro2.jpg" width="650"> 
	</div>

</div>


<%@ include file="../bottom.jsp" %>
