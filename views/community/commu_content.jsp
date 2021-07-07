<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../top.jsp" %>

<style>
	#third_commu_content #commu_content_table caption {text-align:center;}
	#third_commu_content #commu_content_table td{padding-bottom:10px;}
	#third_commu_content #commu_content_table a{padding-right:5px;padding-left:5px;color:grey;}
	#third_commu_content #commu_dat_table td{padding-bottom:10px;}
	#third_commu_content #commu_dat_table a{color:grey;}
	#third_commu_content #dat_paging
	{
		border-top:1px solid #EAEAEA;border-bottom:1px solid #EAEAEA;
		font-size:20px;
		text-align:center;
	}
	#third_commu_content #dat_paging td {padding:5px 0 5px;}
	#third_commu_content #dat_paging a {padding:5px 5px 15px;}
</style>

<div id="third_commu_content" align="center">

<table width="700" align="center" id="commu_content_table">	
	<caption><h3>${cdto.title }</h3></caption>
	<tr align="right">
		<td colspan="2">조회수 : ${cdto.readnum } | 작성일 : ${cdto.writeday }</td>
	</tr>
	<tr align="left">
		<td width="100">이름</td>
		<td>${cdto.nickname }</td>
	</tr>
	<tr>
		<td> 내용 </td>
		<td> ${cdto.content } </td>
	</tr>
	<tr align="right">
		<td colspan="2"><c:if test="${userid != null }"><c:if test="${nickname != cdto.nickname }"><a href="javascript:report(${cdto.id },'${userid }')">신고하기</a></c:if>&nbsp;</c:if><a href="commu_list">목록으로</a></td>
	</tr>
	<c:if test="${nickname == cdto.nickname || userid == 'admin' }">
		<tr align="center">
			<td colspan="2">
				<a href="commu_update?id=${cdto.id }">수정하기</a>
				<a href="javascript:del_confirm(${cdto.id })">삭제하기</a>
			</td>
		</tr>
	</c:if>
</table>

<br>

<form method="post" action="dat_write_ok">
	<input type="hidden" name="cid" value="${cdto.id }">
	<table width="700" align="center" id="dat_write_form">
		<c:if test="${nickname != null }">
			<tr align="center">
				<td> <input type="hidden" name="nickname" value="${nickname }">${nickname } </td>
				<td> <textarea rows="3" cols="65" name="content"></textarea></td>
				<td><input type="submit" value="댓글 작성"> </td>
			</tr>
		</c:if>
		<c:if test="${nickname == null }">
			<tr align="center">
				<td colspan="3" width="100%"> <a href="login"><textarea rows="3" cols="65" disabled>로그인 후 댓글 작성이 가능합니다.</textarea></a></td>
			</tr>
		</c:if>
	</table>
</form>
<br>

<form  method="post" action="dat_update" name="pkc">
	<table width="700" align="center" id="dat_update_form">
		<tr id="dat_update_layer" style="text-align:center;display:none;">
			<td>
				<input type="hidden" name="id"><input type="hidden" name="cid">
				<input type="text" size="60%" name="content">
				<input type="submit" value="댓글 수정">&nbsp;
				<input type="button" value="닫기" onclick="javascript:update_hide()">
			</td>
		</tr>
	</table>
</form>
<br>

<table width="700" align="center" id="commu_dat_table">
	<c:forEach var="ddto" items="${dlist }">
		<tr style="border-top:1px solid #EAEAEA;">
			<td width="20%" style="padding-top:3px;"> <span id="dat_nickname" style="font-weight:bold;">${ddto.nickname }</span><p>${ddto.writeday }</p></td>
			<td width="60%"> ${ddto.content } </td>
			<c:if test="${nickname == ddto.nickname || userid == 'admin' }">
				<td width="20%">
					<span style="float:right;"><a href="javascript:dat_update_view(${ddto.id },${ddto.cid },'${ddto.content }')">수정</a> | <a href="javascript:dat_delete(${ddto.id },${ddto.cid })">삭제</a></span>
				</td>
			</c:if>
		</tr>
	</c:forEach>
	<tr id="dat_paging">
		<td colspan="3">
			<c:if test="${pstart != 1 }"> <!-- 10페이지 이전 -->
				<a href="commu_content?id=${cdto.id }&page=${pstart-1}#commu_dat_table"> ← </a>
			</c:if>
			<c:if test="${pstart == 1 }">
				<a href="#" style="visibility:hidden;"> ← </a>
			</c:if>
			<c:if test="${page != 1 }">
				<a href="commu_content?id=${cdto.id }&page=${page-1 }#commu_dat_table"> 이전 </a>
			</c:if>
			<c:if test="${page == 1 }">
				<a href="#" style="visibility:hidden;"> 이전 </a>
			</c:if>
			<!-- 10페이지 이전 끝 -->
			<c:forEach var="i" begin="${pstart }" end="${pend }"> <!-- 1~10 -->
				<c:if test="${page == i }">
					<a href="commu_content?id=${cdto.id }&page=${i}#commu_dat_table" style="color:green;font-weight:bold;"> ${i} </a>
				</c:if>
				<c:if test="${page != i}">
					<a href="commu_content?id=${cdto.id }&page=${i}#commu_dat_table"> ${i} </a>
				</c:if>
			</c:forEach> <!-- 1~10 끝  -->
			<!-- 다음 시작 -->
			<c:if test="${page != dat_cnt && dat_cnt != 0}">
				<a href="commu_content?id=${cdto.id }&page=${page+1}#commu_dat_table"> 다음 </a>
			</c:if>
			<c:if test="${page == dat_cnt || dat_cnt == 0}">
				<a href="#" style="visibility:hidden;"> 다음 </a>
			</c:if>
			 <!-- 다음 끝 -->
			<c:if test="${pend != dat_cnt }"> <!-- 10페이지 다음 -->
				<a href="commu_content?id=${cdto.id }&page=${pend+1}#commu_dat_table"> → </a>
			</c:if>
			<c:if test="${pend > dat_cnt}">
				<a href="#" style="visibility:hidden;"> → </a>
			</c:if> <!-- 10페이지 다음 끝 -->
		</td>
	</tr>
</table>

</div>
<script>
	function del_confirm(id)
	{
		var chk = confirm("삭제하시겠습니까?");
		if(chk)
		{
			alert("삭제되었습니다.");
			location.href="commu_delete?id="+id;
		}
	}
	function dat_update_view(id,cid,content)
	{
		var id = id;
		var cid = cid;
		var content = content;
		document.getElementById("dat_update_layer").style.display="table-cell";
		location.href="#dat_write_form";
		document.pkc.id.value=id;
		document.pkc.cid.value=cid;
		document.pkc.content.value=content;
		document.pkc.content.focus();
	}
	function update_hide()
	{
		document.getElementById("dat_update_layer").style.display="none";
	}
	function dat_delete(id, cid)
	{
		var id = id;
		var cid = cid;
		var chk = confirm("삭제하시겠습니까?");
		if(chk)
		{
			alert("삭제되었습니다.");
			location.href="dat_delete?id="+id+"&cid="+cid;
		}
	}
	function report(id, userid)
	{
		var chk = confirm("신고하시겠습니까?");
		if(chk)
		{
			var chk2 = new XMLHttpRequest();
			var id = id;
			var userid = userid;
			chk2.open("get","report_ok?id="+id+"&userid="+userid);
			chk2.send();
			
			chk2.onreadystatechange = function()
			{
				if(chk2.readyState == 4)
				{
					if(chk2.responseText == "1")
					{
						alert("신고가 완료되었습니다.");
					}
				}
			}
		}
	}
</script>

<%@ include file="../bottom.jsp" %>