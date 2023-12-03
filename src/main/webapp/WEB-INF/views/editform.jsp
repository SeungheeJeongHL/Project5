<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.project4_final.BoardDAO, com.example.project4_final.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
	<style>
		.button {
			background-color: #ffa5a5;
			border: none;
			color: #000000;
			padding: 15px 32px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			margin: 4px 2px;
			cursor: pointer;
		}
	</style>
</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editmenu.jsp" method="post">
<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
<table>
<tr><td>식당 이름:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
<%--<tr><td>식당 위치:</td><td><input type="text" name="writer" value="<%= u.getWriter()%>" /></td></tr>--%>
	<tr><td>식당 위치:</td><td><select name="writer" id="writer" name="writer">
		<option value="514 학생회관">514 학생회관</option>
		<option value="514 맘스키친">514 맘스키친</option>
		<option value="511 복지동">511 복지동</option>
		<option value="302 김영길 그레이스 스쿨">302 김영길 그레이스 스쿨</option></td></tr>
	<tr><td>메뉴:</td><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
<tr><td colspan="2"><input class="button" type="submit" value="수정"/>
<input class="button" type="button" value="취소" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>