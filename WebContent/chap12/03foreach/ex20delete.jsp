<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="chap11.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
int id = Integer.parseInt(request.getParameter("id"));

Car car = new Car();

List<Car> cars = (List<Car>) application.getAttribute("cars");

cars.remove(id);

response.sendRedirect("ex18carForm.jsp");
%>