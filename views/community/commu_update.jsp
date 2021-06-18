<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../top.jsp" %>
<style>
#third_commu_content #commu_content_table tr{text-align:center;}
	#third_commu_content #commu_content_table td{padding-bottom:10px;}
	#third_commu_content #commu_content_table a{padding-right:5px;padding-left:5px;}
</style>

<div id="third_commu_content" align="center">

<form method="post" action="commu_update_ok">
	<input type="hidden" name="id" value="${cdto.id }">
<table width="600" align="center" id="commu_content_table">
	<tr>
		<td>이름</td>
		<td>${cdto.nickname }</td>
	</tr>
	<tr>
		<td> 제목 </td>
		<td> <input type="text" name="title" autocomplete="off" size="50%" value="${cdto.title }"> </td>
	</tr>
	<tr>
		<td> 내용 </td>
		<td> <textarea rows="5" cols="50" name="content">${cdto.content }</textarea> </td>
	</tr>
	<tr align="right">
		<td colspan="2"><input type="submit" value="수정하기"></td>
	</tr>
</table>
</form>

</div>


<%@ include file="../bottom.jsp" %>