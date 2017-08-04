<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login page</title>
		<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
		<link rel="stylesheet" href="/static/css/font-awesome.min.css">
	</head>
	<body>
	<div class="container">
			<div class="row"><br>
			</div>	
	        <div class="row">
	            <div class="col-md-4 col-md-offset-4">
	                <div class="login-panel panel panel-default">
	                    <div class="panel-heading">	                        
	                        	<c:if test="${param.logout != null}">
									<h3 class="panel-title" align=center>SMS Logout</h3>
								</c:if>
								<c:if test="${param.logout == null}">
									<h3 class="panel-title" align=center>SMS Login</h3>
								</c:if>
	                    </div>	                    
	                    <div class="panel-body">
	                        <c:url var="loginUrl" value="/login" />
							<form action="${loginUrl}" method="post" class="form-horizontal">
								<c:if test="${param.error != null}">
									<div class="alert alert-danger">
										<p>Invalid username and password.</p>
									</div>
								</c:if>
								<c:if test="${param.logout != null}">
									<div class="alert alert-success">
										<p>You have been logged out successfully.</p>
										<p>Click to login <a href="<c:url value='/admin' />">Again!</a></p>
									</div>
								</c:if>
								<c:if test="${param.logout == null}">
								<div class="input-group input-sm">
									<label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
									<input type="text" class="form-control" id="username" name="ssoId" placeholder="Enter Username" required>
								</div>
								<div class="input-group input-sm">
									<label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
									<input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
								</div>
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
									
								<div class="form-actions">
									<center><input type="submit" class="btn btn-primary" value="Log in"></center>
								</div>
								</c:if>
							</form>
	                    </div>
	                </div>
	            </div>
	        </div>
	  </div>
	</body>
</html>