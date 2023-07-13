<%@page import="bitedu.bipa.book.vo.BookCopy"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book List</title>
<link href="../resources/css/basic_style.css" rel="stylesheet" type="text/css">
</head>
<body>
${param.flag=='true'?"<script>alert('삭제성공');</script>":""}
<img src='../resources/imgs/scrum.png' width="300px" height="200px" />
<table>
	<tr><th colspan="5" id="title">도서리스트</th></tr>
	<tr><td>순번</td><td>타이틀</td><td>저자</td><td>출판일</td><td></td></tr>
<c:forEach var="copy" items="${list}">
	<tr>
		<td>${copy.bookSeq}</td>
		<td><a href='view_detail.do?bookSeq=${copy.bookSeq}'>${copy.title}</a></td>
		<td>${copy.author}</td>
		<td><fmt:formatDate value="${copy.publishDate}" pattern="yyyy-MM-dd"/> </td>
		<td><a href="remove.do?bookSeq=${copy.bookSeq}">삭제</a></td></tr>
</c:forEach>
	<tr><td colspan="5"><a href="view_regist.do"><button>도서등록</button></a></td></tr>
</table>
</body>
</html>