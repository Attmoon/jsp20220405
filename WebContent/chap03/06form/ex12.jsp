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
/* request.setCharacterEncoding("UTF-8"); */

int num1 = Integer.parseInt(request.getParameter("num1Str"));
int num2 = Integer.parseInt(request.getParameter("num2Str"));

String cal = request.getParameter("calculator");
%>

<%
if (cal.equals("plus")) { %>
	<%= num1 %> + <%= num2 %> = <%= num1 + num2 %>
<%	
} else if (cal.equals("sub")){ %>
	<%= num1 %> - <%= num2 %> = <%= num1 - num2 %>
<% 
} else if (cal.equals("mul")) { %>
	<%= num1 %> x <%= num2 %> = <%= num1 * num2 %>
<% 
} else { %>
	<%= num1 %> / <%= num2 %> = <%= (double) num1 / num2 %>
<% 
}
%>
</body>
</html>