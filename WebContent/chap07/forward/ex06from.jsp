<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>

<%
String job = "doctor";
request.setAttribute("job", job);

List<String> name = new ArrayList<>();
name.add("문수현");
name.add("이경희");
name.add("문덕호");
request.setAttribute("names", name);
%>

<jsp:forward page="ex06to.jsp" />