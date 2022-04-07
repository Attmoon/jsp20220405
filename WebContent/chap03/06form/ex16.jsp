<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String desc = request.getParameter("text");
StringBuffer des = new StringBuffer(desc);
String reverse = des.reverse().toString();


%>

<textarea name="" id="" cols="30" rows="10"><%= reverse %></textarea>

</body>
</html>