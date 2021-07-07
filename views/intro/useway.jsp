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
	#third #useway_title{padding-top:10px;padding-bottom:20px;}
	#third #useway_content{padding:20px 0 20px 0;text-align:center;}
	#third #useway_content_sub{padding-top:15px;text-align:center;}
	#third #useway_content_sub1
	{
		padding-top:15px;
		text-align:center;
	}
	#third #useway_content_sub1 .useway_content_sub1_span
	{
		text-align:center;
		padding:14px 0 14px 0;
		width:300px;
		display:inline-block;
	}
</style>

<div align="center" id="third">
	<div id ="side_menu">
		<div id="side_menu_box">
			<div id="side_menu_list" style="border-bottom: 2px solid #E4E4E4;"><a href="introduce">사이트 소개</a></div>
			<div id="side_menu_list"><a href="useway">이용 방법</a></div>
		</div>
	</div>
<br>
	<div id="useway_title" align="center">
		<h2><strong>이용 방법</strong></h2>
	</div>
	<div id="useway_title_img" align="center">
		<img src="resources/img/useway_img.png" width="40%" height="auto">
	</div>
	<br>
	<br>
	<div id="useway_content">
		<div id="useway_content_title">
			<h3><strong>서비스 소개</strong></h3>
		</div>
		<div id="useway_content_sub" align="center">
			<div id="useway_content_sub1">
				<div class="useway_content_sub1_span">
					<img src="resources/img/useway_sub1.jpg" width="70%" height="auto">
					<p><strong>레시피</strong></p>
				</div>
				<div class="useway_content_sub1_span">
					<img src="resources/img/useway_sub2.jpg" width="70%" height="auto">
					<p><strong>건강식품</strong></p>
				</div>
				<div align="center" class="useway_content_sub1_span">
					<img src="resources/img/useway_sub3.jpg" width="70%" height="auto">
					<p><strong>자가진단</strong></p>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
		<div id="useway_recipe" align="center">
			<img src="resources/img/usewayrecipe.PNG">
			<div><h4>600개 이상의 건강한 레시피를 제공해드립니다!</h4></div>
		</div>
		<br>
		<br>
		<br>
		<div id="useway_hfood" align="center">
			<img src="resources/img/useway_hfood.png" width="40%">
			<p>
			<div><h4>1,100여개 이상의 건강 기능 식품을 소개해 드립니다!</h4></div>
		</div>
	</div>
</div>


<%@ include file="../bottom.jsp" %>
