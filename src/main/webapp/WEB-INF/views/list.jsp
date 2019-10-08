<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상품 자료(MVC:anno)</h3>
<table border="1">
<tr><th>고객번호</th><th>상품명</th><th>수량</th><th>단가</th><tr>
<c:forEach var="s" items="${datas }">
<tr>
	<td>${s.code }</td>
	<td>${s.sang}</td>
	<td>${s.su}</td>
	<td>${s.dan}</td>
	
</tr>
</c:forEach>
<tr>
<td colspan="4">
<form action="search" method="post">
상품명 : <input type="text" name="searchValue">
<input type="submit" value="검색">
</form>
</td>
</tr>
</table>
<br>
<iframe src='http://www.daum.net:88/index.html' name="abc" width="200" height="300"></iframe>
</body>
</html>