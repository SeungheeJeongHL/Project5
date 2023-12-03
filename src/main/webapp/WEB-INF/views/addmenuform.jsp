<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<h1>식단 추가</h1>
<form action="addmenu.jsp" method="post">
<table>
<tr><td>식당 이름:</td><td><input type="text" name="title"/></td></tr>
<%--<tr><td>식당 위치:</td><td><input type="text" name="writer"/></td></tr>--%>
    <tr><td>식당 위치:</td><td><select name="writer" id="writer" name="writer">
        <option value="514 학생회관">514 학생회관</option>
        <option value="514 맘스키친">514 맘스키친</option>
        <option value="511 복지동">511 복지동</option>
        <option value="302 김영길 그레이스 스쿨">302 김영길 그레이스 스쿨</option></td></tr>
<tr><td>메뉴:</td><td><textarea wrap="hard" cols="50" rows="5" name="content"></textarea></td></tr>
<tr><td><a href="index.jsp" class="button">모든 식단 메뉴 보기</a></td><td align="right"><input type="submit" value="추가" class="button"/></td></tr>
</table>
</form>

</body>
</html>