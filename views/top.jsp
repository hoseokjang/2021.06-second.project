<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
    <meta name="description" content="Foodeiblog Template">
    <meta name="keywords" content="Foodeiblog, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Healthy Life</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400,600,700,800,900&amp;display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Unna:400,700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css" type="text/css" rel="stylesheet">
    
    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function()
	{
		$(window).scroll(function()
		{
			var top=$(window).scrollTop();
			$("#side_right_menu").css("top",top);
		});
		$("#side_move_top_btn").click(function()
		{
			$('html, body').animate({
                scrollTop : 0
            }, 400);
		});
	});
	
	function gongjialert()
	{
		alert("로그인 시 이용가능합니다.");		
	}
</script>
<style>
	#side_right_menu
	{
		position:relative;
		width:1400px;
		margin:auto;
	}
	#side_menu_top
	{
		position:fixed;
		width:auto;
		top:750px;
		left:1550px; /* 가로 위치는 파일을 옮기면 1500~1600 사이로 변경 */
	}
</style>
<body>
    <!-- Page Preloder -->
     <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin(사이드 메뉴) -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="main"><img src="resources/img/new_logo.png" width="100%" height="130"></a>
        </div>
        <nav class="humberger__menu__nav mobile-menu"> <!-- 사이드 메뉴 -->
            <ul> 									<!-- 링크 설정 -->
                <li><a href="main">Home</a></li>
                <li>
                	<c:if test="${userid != null }">
                		<c:if test="${userid != 'admin' }">
                			<a href="mypage">마이 페이지</a>
                		</c:if>
                		<c:if test="${userid == 'admin' }">
                			<a href="admin_page">관리자 모드</a>
                		</c:if>
                	</c:if>
                	<c:if test="${userid == null }">
                		<a href="login">마이 페이지</a>
                	</c:if>
                </li>
	 <c:if test="${userid == null }">
		<li><a href="login">자가진단</a></li>
	 </c:if>
	 <c:if test="${userid != null }">
		<li><a href="self_diagnose">자가진단</a></li>
	 </c:if>
                <li><a href="commu_list">자유 게시판</a></li>
                <li><a href="gongji_list">고객 센터</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="humberger__menu__about">
            <div class="humberger__menu__title sidebar__item__title"></div>
            <div class="humberger__menu__about__social sidebar__item__follow__links"></div>
        </div>
        <div class="humberger__menu__subscribe">
            <div class="humberger__menu__title sidebar__item__title"></div>
        </div>
    </div>
        
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <div class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-1 col-md-auto col-2 order-md-1 order-1">
                        <div class="header__humberger">
                            <i class="fa fa-bars humberger__open"></i>
                        </div>
                    </div>
                    <div class="col-lg-10 col-md-10 order-md-2 order-3">
                        <nav class="header__menu">
                            <ul>
                                <li><a href="main">Home</a></li>
                                <li><a href="#">소개</a>
			<div class="header__megamenu__wrapper" align="center">
                                        <div class="header__megamenu">
                                            <div class="header__megamenu__item">
                                                    <div class="label"><a href="introduce">사이트 소개</a></div>
                                            </div>
                                            <div class="header__megamenu__item">
                                                    <div class="label"><a href="useway">이용 방법</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                               <c:if test="${userid == 'admin' }">
                                	<li><a href="#">통계</a>
                                		<div class="header__megamenu__wrapper" align="center">
                                        <div class="header__megamenu">
                                            <div class="header__megamenu__item">
                                                    <div class="label"><a href="statistics">일반 통계</a></div>
                                            </div>
                                            <div class="header__megamenu__item">
                                                    <div class="label"><a href="hchart">관리자 통계</a></div>
                                            </div>
                                        </div>
                                    </div>
                                	</li>
                                	<li><a href="gongji_news">뉴스</a></li>
                                </c:if>
                                <c:if test="${userid != 'admin' }">
                                	<li><a href="statistics">통계</a></li>
                                	<li><a href="gongji_news">뉴스</a></li>
                                </c:if>
                                <li><a href="#">레시피/재료</a>
                                	<div class="header__megamenu__wrapper" align="center">
                                        <div class="header__megamenu">
                                            <div class="header__megamenu__item">
                                                    <div class="label"><a href="recipe_list">건강 레시피</a></div>
                                            </div>
                                            <div class="header__megamenu__item">
                                                    <div class="label"><a href="member_recipe_list">회원 공유 레시피</a></div>
                                            </div>
			 <div class="header__megamenu__item">
                                                    <div class="label"><a href="keywd_search">재료</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="hfood">건강기능 식품</a></li>
                                <c:if test="${userid == null }">
			<li><a href="login">자가진단</a></li>
	 	  </c:if>
	 	  <c:if test="${userid != null }">
			<li><a href="self_diagnose">자가진단</a></li>
		  </c:if>
                                <li><a href="commu_list">자유 게시판</a></li>
                                <li><a href="#">고객센터</a>
                                	<div class="header__megamenu__wrapper" align="center">
                                        <div class="header__megamenu">
                                            <div class="header__megamenu__item">
                                                    <div class="label"><a href="gongji_list">공지사항</a></div>
                                            </div>
                                            <div class="header__megamenu__item">
                                                    <div class="label"><a href="gongji_qna">도움말</a></div>
                                            </div>
                                            <div class="header__megamenu__item">
                                            <c:if test="${userid != null && userid != 'admin'}">
                                                    <div class="label"><a href="gongji_client">1대1 문의</a></div>
                                            </c:if>
                                            <c:if test="${userid == null }">
                                            		<div class="label"><a href="javascript:gongjialert()">1대1 문의</a></div>
                                            </c:if>
                                            <c:if test="${userid == 'admin' }">
                                            		<div class="label"><a href="admin_client_list">1대1 문의</a></div>
                                            </c:if>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </nav>
                    </div>
               </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__btn">
                    	<c:if test="${userid == null }">
                        	<a href="login" class="primary-btn">로그인</a>
                        </c:if>
                        <c:if test="${userid != null }">
                        	<c:if test="${userid != 'admin' }">
                        		<a href="mypage" class="primary-btn">${nickname }님</a><a href="logout" class="primary-btn">로그아웃</a>
                        	</c:if>
                        	<c:if test="${userid == 'admin' }">
                        		<a href="admin_page" class="primary-btn">관리자모드</a><a href="logout" class="primary-btn">로그아웃</a>
                        	</c:if>
                        </c:if>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__logo">
                        <a href="main"><img src="resources/img/new_logo.png" width="450px" height="100"></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-envelope-o"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div id="side_right_memu">
    	<div  id="side_menu_top"><a href="#" id="side_move_top_btn" style="display:inline-block;"><img src="resources/img/move_top.png"></a></div>
    </div>