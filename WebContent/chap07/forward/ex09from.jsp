<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap07.*" %>

<%
Car car1 = new Car();
Car car2 = new Car();

car1.setName("AUDI");
car1.setPrice(100000000);
car2.setName("BENZ");
car2.setPrice(70000000);

request.setAttribute("myCar", car1);
request.setAttribute("yourCar", car2);

%>

<jsp:forward page="ex09to.jsp" />