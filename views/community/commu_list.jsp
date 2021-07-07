<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../top.jsp" %>
<style>
	#third_community a{color:black;}
	#third_community_search{padding:20px 10px 30px 10px;}
	#third_community_table caption{text-align:center;}
	#third_community_table tr{text-align:center;}
	#third_community_table td{padding-bottom:6px;}
	#third_community_table #commu_write{text-align:right;}
	#third_community_table #list_ord{padding:10px;}
	#commu_list_page a{padding-left:3px;padding-right:3px;}
</style>

<div id="third_community" align="center">
<table width="900" align="center" id="third_community_table">
	<caption><h2><strong>자유 게시판</strong></h2></caption>
	<tr id="third_community_search">
		<td colspan="4" height="30">
			<form method="post" action="commu_list">
				<select name="csel">
					<c:if test="${csel.equals('title') }">
						<option value="title" selected>제목</option>
					</c:if>
					<c:if test="${!csel.equals('title') }">
						<option value="title">제목</option>
					</c:if>
					<c:if test="${csel.equals('nickname') }">
						<option value="nickname" selected>작성자</option>
					</c:if>
					<c:if test="${!csel.equals('nickname') }">
						<option value="nickname">작성자</option>
					</c:if>
					<c:if test="${csel.equals('content') }">
						<option value="content" selected>내용</option>
					</c:if>
					<c:if test="${!csel.equals('content') }">
						<option value="content">내용</option>
					</c:if>
				</select>
				<c:if test="${cword == '' }">
					<input type="text" name="cword" placeholder="검색어를 입력해주세요" autocomplete="off">
				</c:if>
				<c:if test="${cword != '' }">
					<input type="text" name="cword" value="${cword }" autocomplete="off">
				</c:if>
				<input type="submit" value="검색">
			</form>
		</td>
	</tr>
	<tr>
		<td colspan="4" id="commu_write" height="20">
			<a href="commu_list?chk=1" id="list_ord">이름 순</a>|
			<a href="commu_list?chk=2" id="list_ord">조회수 순</a>|
			<a href="commu_list?chk=3" id="list_ord">작성 일자 순</a>&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
	<tr>
		<td> 이름 </td>
		<td> 제목 </td>
		<td> 조회수 </td>
		<td> 작성일 </td>
	</tr>
	<c:forEach var="cdto" items="${list }">
		<tr>
			<td> ${cdto.nickname } </td>
			<td width="500" style="text-align:left;"><a href="commu_readnum?id=${cdto.id}"> ${cdto.title } <span id="dat_num" style="font-weight:bold;color:#8C8C8C">[${cdto.dat_num }]</span> </a></td>
			<td> ${cdto.readnum } </td>
			<td> ${cdto.writeday } </td>
		</tr>
	</c:forEach>
	<tr id="commu_write">
		<td colspan="4">
			<c:if test="${userid != null }">
				<a href="commu_write">글 작성</a>
			</c:if>
			<c:if test="${userid == null }">
				<a href="login">글 작성</a>
			</c:if>
		</td>
	</tr>
	<tr id="commu_list_page">
		<td colspan="4" align="center">
			<c:if test="${pstart != 1 }"> <!-- 10페이지 이전 -->
				<a href="commu_list?page=${pstart-1}"> ← </a>
			</c:if>
			<c:if test="${pstart == 1 }">
				<a href="#" style="visibility:hidden;"> ← </a>
			</c:if>
			<c:if test="${page != 1 }">
				<a href="commu_list?page=${page-1 }"> 이전 </a>
			</c:if>
			<c:if test="${page == 1 }">
				<a href="#" style="visibility:hidden;"> 이전 </a>
			</c:if>
			<!-- 10페이지 이전 끝 -->
			<c:forEach var="i" begin="${pstart }" end="${pend }"> <!-- 1~10 -->
				<c:if test="${page == i }">
					<a href="commu_list?page=${i}" style="color:green;font-weight:bold;"> ${i} </a>
				</c:if>
				<c:if test="${page != i}">
					<a href="commu_list?page=${i}"> ${i} </a>
				</c:if>
			</c:forEach> <!-- 1~10 끝  -->
			<c:if test="${page != pagecnt && pagecnt != 0 }"> <!-- 다음 시작 -->
				<a href="commu_list?page=${page+1}"> 다음 </a>
			</c:if>
			<c:if test="${page == pagecnt || pagecnt == 0}"> 
				<a href="#" style="visibility:hidden;"> 다음 </a>
			</c:if> <!-- 다음 끝 -->
			<c:if test="${pend != pagecnt }"> <!-- 10페이지 다음 -->
				<a href="commu_list?page=${pend+1}"> → </a>
			</c:if>
			<c:if test="${pend > pagecnt}">
				<a href="#" style="visibility:hidden;"> → </a>
			</c:if> <!-- 10페이지 다음 끝 -->
		</td>
	</tr>
</table>
</div>

<%@ include file="../bottom.jsp" %>