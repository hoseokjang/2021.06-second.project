<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../top.jsp" %>


<div align="center" id="third_commu_write">

<form method="post" action="commu_write_ok">
	<div style="padding-bottom:15px;"><h3>자유 게시판 글 작성</h3></div>
	<input type="hidden" name="nickname" value="${nickname }">
	<table width="600" align="center">
		<tr align="center">
			<td> 제목  </td>
			<td> <input type="text" name="title" autocomplete="off" size="40%"> </td>
		</tr>
		<tr align="center">
			<td> 내용  </td>
			<td> <textarea rows="5" cols="50" name="content"></textarea> </td>
		</tr>
		<tr align="center">
			<td colspan="2"> <button type="submit">작성 완료</button> </td>
		</tr>
	</table>
</form>

</div>

<%@ include file="../bottom.jsp" %>