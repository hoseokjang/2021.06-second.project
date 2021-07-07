<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top.jsp" %>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		$("#btn").click(function(){
			var y = $('input:radio[name="y"]:checked').val();
			if(y == null)
				y = '';
			var g = $('input:radio[name="gen"]:checked').val();
			if (g == null)
				g = '';
			if (y+g == '')
				alert("옵션을 선택해주세요");
			else
				$("#img").attr("src","resources/img/사망원인/"+y+g+".png");
		});
		$("#reset_btn").click(function(){
			$('input[name="y"]').prop("checked",false);
			$('input[name="gen"]').prop("checked",false);
		});
	});
</script>
<style>
	#option_check
	{
		text-align:center;
		font-family: 'Noto Sans KR', sans-serif;
		border:1px solid #e5e5e5;
		width:600px;
		margin:auto;
	}
	#graph_img
	{
		text-align:center;
		visibility:hidden;
	}
	#option_check .y_span_title
	{
		font-size:15px;
		padding:0 -30px 0;
		font-weight:bold;
		color:#57c006;
		width:200px;
		position:relative;
		display:inline-block;
		left:0px;
		font-weight: 550;
	}
	#option_check .y_span
	{
		font-size:15px;
		padding:0 5px 0;
	}
</style>
<div id="option_check" align="center">
	<div id="option_y">
		<span class="y_span_title"> 년도 </span>
		<span class="y_span"><input type="radio" name="y" value="2019"> 2019 </span>
		<span class="y_span"><input type="radio" name="y" value="2018"> 2018 </span>
		<span class="y_span"><input type="radio" name="y" value="2017"> 2017 </span>
		<span class="y_span"><input type="radio" name="y" value="2016"> 2016 </span>
		<span class="y_span"><input type="radio" name="y" value="2015"> 2015 </span>
	</div>
	<div id="option_g">
		<span class="y_span_title" style="left:-91px;"> 성별 </span>
		<input type="radio" name="gen" value="1"> 남자  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="gen" value="2"> 여자 
	</div>
</div>
<p>
<div style="width:600px; margin:auto;">
	<div id="option_btn" align="right">
		<div style="display:inline-block;">
			<input type="button" id="reset_btn" value="선택 초기화" style="border:1px solid #57c006; background:#57c006; color:white;">
		</div>
		<div style="display:inline-block;">
			<input type="button" name="btn" id="btn" value="결과보기" style="border:1px solid #57c006; background:#57c006; color:white;">
		</div>
	</div>
</div>
<br>
<br>
<div align="center">
	<img id="img" src="">
</div>
<br>
<br>
<%@ include file="../bottom.jsp" %>
    