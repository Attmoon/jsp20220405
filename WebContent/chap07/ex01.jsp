<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>

<%-- include directive --%>
<%-- file 속성으로 이 위치에 포함될 파일의 경로를 작성 --%>
<%-- 다른 파일의 내용을 현재 위치에 삽입(복붙)후 java로 변환 --%>
<%@ include file="module/header01.jsp" %>

<!-- div>(h1>lorem1^p>lorem)*3 -->
<div>
	<h1>Lorem.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus aut ipsa illo quidem voluptas vitae nobis dicta eaque hic numquam at tenetur fugiat corporis saepe consequatur amet ullam repellendus pariatur.</p>
	<h1>Consectetur?</h1>
	<p>Tenetur nostrum nobis hic suscipit eligendi consequuntur odio consectetur ipsa unde perspiciatis! Sed ab necessitatibus est nam esse dolore facilis nemo ipsam veniam itaque consectetur molestiae quaerat accusantium delectus perferendis.</p>
	<h1>Aliquid.</h1>
	<p>Error fugit obcaecati aliquam sed suscipit necessitatibus iusto maiores vero optio repellendus natus reprehenderit dolore facere et eligendi aliquid quam esse ex voluptates ab officiis beatae illum commodi voluptatibus quos.</p>
</div>

</body>
</html>