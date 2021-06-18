<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="top.jsp" %>

<style>
	#third_main{padding-bottom:30px;width:100%;font-size:20px;}
	#third_main a{font-size:18px;}
	#third_main p{font-size:16px;}
	#third_main .view_more{color:grey;}
	#main_board{text-align:center;width:60%;height:230px;}
	#main_board_1{width:450px;float:left;padding-right:7px;}
	#main_board_2{width:450px;float:right;padding-left:7px;}
	#main_more{text-align:right;color:grey;}
	#main_board ul{list-type:none;}
	#main_board li{text-align:left;overflow:hidden;padding-bottom:5px;}
	#main_board1_list a{color:black;}
	#main_board2_list a{color:black;}
	#main_recipe_share{text-align:center;padding-top:20px;padding-bottom:20px;height:230px;width:60%;}
	#main_share_icon{width:300px;float:left;padding-right:7px;border:3px solid #E0E0E0;}
	#main_share{width:500px;float:right;padding-left:7px;}
	#share_link{display:inline-block;}
	#main_share ul{list-type:none;}
	#main_share li{text-align:left;overflow:hidden;padding-bottom:7px;}
	#main_share_list a{color:black;}
	
	#main_recipe_rank {text-align:center;width:70%;height:230px;padding-top:10px;}
	#main_recipe_rank_title {text-align:left;font-size:1.3rem;font-weight:bold;padding-bottom:17px;}
	#main_recipe_rank ul {list-style-type:none;}
	#main_recipe_rank_list a{display:inline-block;}
	#main_recipe_rank_list li{float:left; width:20%; height:150; padding-right:16px;padding-left:16px;}
	.main_commu_list_writeday {float:right;text-align:right;color:#4B4B4B;font-size:14px;}
</style>
<script>
	$(document).ready(function(){
		$('.slider').bxSlider({
			auto: true,
			speed: 500,
			pause: 4000,
			mode:'fade',
			autoControls: true,
			controls: false,
			slideWidth : 1300,
			slideHeight : 500
		});
	});
</script>
<div id="third_main" align="center">
	<!-- 사진 스크롤이 들어갈 부분 -->
	<div class="slider">
		<img src=resources/img/hero/hero-1.jpg width=700 height=400>
    	<img src=resources/img/hero/hero-2.jpg width=700 height=400> 
		<img src=resources/img/hero/hero-3.jpg width=700 height=400> 
		<img src=resources/img/hero/hero-4.jpg width=700 height=400>
	</div>
	<!-- 사진 스크롤 끝 부분 -->
	
	<!-- 공지사항과 자유게시판 시작 -->
	<div id="main_board">
		<div id="main_board_1">
			<div id="main_1_title"><h4>공지사항</h4> <p id="main_more"><a href="#" class="view_more">더보기 +</a></p></div>
			<ul id="main_board1_list">
				<li> <a href="#">공지1</a> </li>
				<li> <a href="#">공지1</a> </li>
				<li> <a href="#">공지1</a> </li>
				<li> <a href="#">공지1</a> </li>
				<li> <a href="#">공지1</a> </li>
			</ul>
		</div>
		<div id="main_board_2">
			<div id="main_2_title"><h4>자유게시판</h4> <p id="main_more"><a href="commu_list" class="view_more">더보기 +</a></p></div>
			<ul id="main_board2_list">
				<c:forEach var="cdto" items="${clist }">
					<li> <a href="commu_content?id=${cdto.id }">${cdto.title }<span class="main_commu_list_writeday">${cdto.writeday }</span></a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<!-- 공지사항과 자유게시판 끝 -->
<br>
<hr>
	<!-- 레시피 공유 시작 -->
	<div id="main_recipe_share">
		<div id="main_share_icon">
			<a href="#" id="share_link">
				<img src="resources/img/sharelogo.png" id="share_logo" width="170" height="auto">
				<p id="share_info">여러분의 레시피를 공유해 주세요</p>
			</a>
		</div>
		<div id="main_share">
			<div id="main_share_title"><h4>레시피 공유</h4> <p id="main_more"><a href="#" class="view_more">더보기 +</a></p></div>
				<ul id="main_share_list">
					<li> <a href="#">공유1</a> </li>
					<li> <a href="#">공유1</a> </li>
					<li> <a href="#">공유1</a> </li>
					<li> <a href="#">공유1</a> </li>
					<li> <a href="#">공유1</a> </li>
				</ul>
		</div>
	</div>
	<!-- 레시피 공유 끝 -->
<br>
<br>
<hr>
	<!-- 많이 찾는 레시피 시작 -->
	<div id="main_recipe_rank">
		<div id="main_recipe_rank_title">많이 찾는 레시피</div>
		<div id="main_recipe_rank_list">
			<ul id="main_recipe_rank_ul">
				<li> 
					<a href="#">
						<img src="resources/img/megamenu/p-1.jpg">
						<p>레시피1</p>
					</a>
				</li>
				<li> 
					<a href="#">
						<img src="resources/img/megamenu/p-1.jpg">
						<p>레시피1</p>
					</a>
				</li>
				<li> 
					<a href="#">
						<img src="resources/img/megamenu/p-1.jpg">
						<p>레시피1</p>
					</a>
				</li>
				<li> 
					<a href="#">
						<img src="resources/img/megamenu/p-1.jpg">
						<p>레시피1</p>
					</a>
				</li>
				<li> 
					<a href="#">
						<img src="resources/img/megamenu/p-1.jpg">
						<p>레시피1</p>
					</a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 많이 찾는 레시피 끝 -->
<br>
<hr>
	<!-- 많이 찾는 건강식품 시작 -->
	<div id="main_recipe_rank">
		<div id="main_recipe_rank_title">많이 찾는 건강식품</div>
		<div id="main_recipe_rank_list">
			<ul id="main_recipe_rank_ul">
				<li> 
					<a href="#">
						<img src="resources/img/megamenu/p-1.jpg">
						<p>건강식품1</p>
					</a>
				</li>
				<li> 
					<a href="#">
						<img src="resources/img/megamenu/p-1.jpg">
						<p>건강식품1</p>
					</a>
				</li>
				<li> 
					<a href="#">
						<img src="resources/img/megamenu/p-1.jpg">
						<p>건강식품1</p>
					</a>
				</li>
				<li> 
					<a href="#">
						<img src="resources/img/megamenu/p-1.jpg">
						<p>건강식품1</p>
					</a>
				</li>
				<li> 
					<a href="#">
						<img src="resources/img/megamenu/p-1.jpg">
						<p>건강식품1</p>
					</a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 많이 찾는 건강식품 끝 -->
</div>
<br>
<%@ include file="bottom.jsp" %>