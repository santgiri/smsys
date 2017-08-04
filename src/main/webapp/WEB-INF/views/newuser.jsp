<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Users</title>
	<link href="/static/css/bootstrap.css"  rel="stylesheet"></link>
	<link href="/static/css/font-awesome.min.css">
	<link href="/static/css/dashboard.css" rel="stylesheet">
	<link rel="stylesheet" href="/static/css/font-awesome.min.css">
</head>
<body>
 <nav class="navbar navbar-inverse navbar-fixed-top">
   <div class="container-fluid">
     <div class="navbar-header">
       <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
         <span class="sr-only">Toggle navigation</span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
       </button>
       <a class="navbar-brand" href="#">SMS</a>
     </div>
     <div id="navbar" class="navbar-collapse collapse">
       <ul class="nav navbar-nav navbar-right">
         <li><a href="/admin">Dashboard</a></li>
         <li><a href="/logout?logout">Logout</a></li>
       </ul>
     </div>
   </div>
 </nav>	
<div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
	            <li class="active"><a href="/course/list">Manage Course <span class="sr-only"></span></a></li>
			    <li><a href="/course/add">Add Course</a></li>
	      </ul>
		  <ul class="nav nav-sidebar">
            <li class="active"><a href="/user/list">Manage User <span class="sr-only"></span></a></li>
            <li><a href="/newuser">Add User</a></li>
          </ul>
        </div>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"> 	
<h2>New User Registration Form</h2>	
<form:form method="POST" modelAttribute="user" class="form-horizontal">
	<div class="row">
		<div class="form-group col-md-12">
			<label class="col-md-3 control-lable" for="firstName">First Name</label>
			<div class="col-md-7">
				<form:input type="text" path="firstName" id="firstName" class="form-control input-sm"/>
				<div class="has-error">
					<form:errors path="firstName" class="help-inline"/>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group col-md-12">
			<label class="col-md-3 control-lable" for="lastName">Last Name</label>
			<div class="col-md-7">
				<form:input type="text" path="lastName" id="lastName" class="form-control input-sm"/>
				<div class="has-error">
					<form:errors path="lastName" class="help-inline"/>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group col-md-12">
			<label class="col-md-3 control-lable" for="ssoId">SSO ID</label>
			<div class="col-md-7">
				<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm"/>
				<div class="has-error">
					<form:errors path="ssoId" class="help-inline"/>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group col-md-12">
			<label class="col-md-3 control-lable" for="password">Password</label>
			<div class="col-md-7">
				<form:input type="password" path="password" id="password" class="form-control input-sm"/>
				<div class="has-error">
					<form:errors path="password" class="help-inline"/>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group col-md-12">
			<label class="col-md-3 control-lable" for="email">Email</label>
			<div class="col-md-7">
				<form:input type="text" path="email" id="email" class="form-control input-sm"/>
				<div class="has-error">
					<form:errors path="email" class="help-inline"/>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group col-md-12">
			<label class="col-md-3 control-lable" for="userProfiles">Roles</label>
			<div class="col-md-7">
				<form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type" class="form-control input-sm"/>
				<div class="has-error">
					<form:errors path="userProfiles" class="help-inline"/>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-actions col-md-12">
				<c:if test="${!empty user.firstName}">
					<input type="submit" value="<spring:message text="Edit User"/>" class="btn btn-primary"/>
				</c:if>
				<c:if test="${empty user.firstName}">
					<input type="submit" value="<spring:message text="Add User"/>" class="btn btn-primary"/>
				</c:if>
		</div>
	</div>
	</form:form>
	</div>
	</div>
</div> <!-- End container-fluid-->
</body>
</html>