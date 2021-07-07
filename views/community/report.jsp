<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top.jsp" %>
<style>
	#third_report{
		width:100%;
		text-align:center;
	}
	#admin_report caption{
		text-align:center;
	}
</style>
<div id="third_report">
<table width="700" align="center" id="admin_report">
	<caption><h3>신고 목록</h3></caption>
	<tr align="center">
		<td> 신고번호 </td>
		<td> 신고자 id</td>
		<td> 신고 게시물</td>
		<td> 신고일 </td>
		<td> 삭제 </td>
	</tr>
	<c:forEach var="rdto" items="${list }">
		<tr align="center">
			<td>${rdto.id }</td>
			<td>${rdto.userid }</td>
			<td><a href="commu_content?id=${rdto.cid }">${rdto.title }</a></td>
			<td>${rdto.writeday }</td>
			<td><a href="report_delete?id=${rdto.id }&cid=${rdto.cid }">삭제</a></td>
		</tr>
	</c:forEach>
</table>
</div>
<br>
<br>
<br>
<%@ include file="../bottom.jsp" %>