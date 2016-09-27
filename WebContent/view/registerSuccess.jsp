<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- JSP Expression Language --%>
	<h2>You registered successfully!!</h2>
	<ul>
		<li>ID: ${customer.id}</li>
		<li>password: ${customer.password}</li>
		<li>name: ${customer.name}</li>
		<li>gender: ${customer.gender }</li>
		<li>email: ${customer.email}</li>
	</ul>
	
	<p>
		<a href="/helloMVC/index.jsp"> go to home page </a>
	</p>
</body>
</html>