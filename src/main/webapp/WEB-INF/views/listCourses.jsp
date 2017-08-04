<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Courses</title>
	<link href="${pageContext.request.contextPath}/static/css/bootstrap.css"  rel="stylesheet"></link>
	<link href="${pageContext.request.contextPath}/static/css/font-awesome.min.css">
	<link href="${pageContext.request.contextPath}/static/css/dashboard.css" rel="stylesheet">
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
				<div class="row">
					<h2>List of courses</h2> 
					<p>Here you can see the list of the courses, remove or update.</p>  	
				</div>	
				<div class="row">						
					<table class="table table-hover">  
					<thead>  
					<tr>  
						<th>Name</th>
						<th>Comments</th>
						<th>Course Fee</th>
						<th>Start Date</th>
						<th>Number Of Classes</th>
						<th>Actions</th>  
					</tr>  
					</thead>  
					<tbody>  
					<c:forEach var="course" items="${courses}">
					<tr>  
					    <!--  <td>${course.id}</td> --> 
					    <td>${course.name}</td>  
					    <td>${course.comments}</td> 
					    <td><i class="fa fa-inr" aria-hidden="true"></i> ${course.courseFee}</td>
					    <td>${course.startDate}</td>
					    <td>${course.totalClasses}</td>  
					    <td>  
					    <a href="${pageContext.request.contextPath}/course/edit/${course.id}.html"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a> /   
					    <a href="${pageContext.request.contextPath}/course/delete/${course.id}.html"><i class="fa fa-trash-o" aria-hidden="true"></i></a><br>  
					    </td>  
					</tr>  
					</c:forEach>
					</tbody>  
					</table>
				</div>				
	</div>
</div> <!-- End container-fluid-->
</body>
</html>