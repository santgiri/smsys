<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Add Course</title>
	<link href="/static/css/bootstrap.css"  rel="stylesheet"></link>
	<link href="/static/css/font-awesome.min.css">
	<link href="/static/css/dashboard.css" rel="stylesheet">
	<link href="/static/css/jquery-ui.min.css" rel="stylesheet">
	<script src="/static/js/jquery.js"></script>
	<script src="/static/js/jquery-ui.min.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
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
        </div>
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"> 	
			<h2>Add Course</h2>	
				<form:form method="POST" modelAttribute="course" class="form-horizontal">
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="name">Course Name</label>
							<div class="col-md-7">
								<form:input type="text" path="name" id="name" class="form-control input-sm"/>
								<div class="has-error">
									<form:errors path="name" class="help-inline"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="comments">Comments</label>
							<div class="col-md-7">
								<form:textarea path="comments" id="comments" class="form-control input-sm"/>
								<div class="has-error">
									<form:errors path="comments" class="help-inline"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="courseFee">Course Fee</label>
							<div class="col-md-7">
								<form:input type="text" path="courseFee" id="courseFee" class="form-control input-sm"/>
								<div class="has-error">
									<form:errors path="courseFee" class="help-inline"/>
								</div>
							</div>
						</div>
					</div>	
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="startDate">Start Date</label>
							<div class="col-md-7">
								<form:input type="date" path="startDate" id="startDate" class="form-control input-sm"/>
								<div class="has-error">
									<form:errors path="startDate" class="help-inline"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="totalClasses">Number Of Classes</label>
							<div class="col-md-7">
								<form:input type="text" path="totalClasses" id="courseFee" class="form-control input-sm"/>
								<div class="has-error">
									<form:errors path="totalClasses" class="help-inline"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-actions col-md-12">							
								<c:if test="${!empty course.name}">
									<input type="submit" value="<spring:message text="Edit Course"/>" class="btn btn-primary"/>
								</c:if>
								<c:if test="${empty course.name}">
									<input type="submit" value="<spring:message text="Add Course"/>" class="btn btn-primary"/>
								</c:if>
						</div>
					</div>
				</form:form>
			</div>		 
</div> <!-- End container-fluid-->
<script>
  $(function() {
    $( "#startDate" ).datepicker(); // give your date field an id or a date css class
  });
</script>
</body>
</html>