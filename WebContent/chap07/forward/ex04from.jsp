<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>

<%-- request parameter는 String --%>
<%-- request attribute는 Object --%>
<%
List<String> list = new ArrayList<>();
list.add("jimin");
list.add("rm");
list.add("jhope");

request.setAttribute("singer", list);
%>

<jsp:forward page="ex04to.jsp">
	<jsp:param value="doctor" name="job"/>
</jsp:forward>