<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Welcome page</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<!-- jQuery library -->
	<script src="/static/jquery.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container"><center>
  	<h1>Welcome to SMS</h1>
  	<p>Click to login <a href="<c:url value='/admin' />">here</a></p> 
	</div></center>
</body>
</html>