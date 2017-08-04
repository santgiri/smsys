<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Admin page</title>
	<link href="/static/css/bootstrap.css"  rel="stylesheet"></link>
	<link rel="stylesheet" href="/static/css/font-awesome.min.css">
	<link href="/static/css/dashboard.css" rel="stylesheet">
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
				          <h1 class="page-header">Dashboard</h1>

				          <div class="row placeholders">
				            <div class="col-xs-6 col-sm-3 placeholder">
				              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
				              <h4>Label</h4>
				              <span class="text-muted">Something else</span>
				            </div>
				            <div class="col-xs-6 col-sm-3 placeholder">
				              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
				              <h4>Label</h4>
				              <span class="text-muted">Something else</span>
				            </div>
				            <div class="col-xs-6 col-sm-3 placeholder">
				              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
				              <h4>Label</h4>
				              <span class="text-muted">Something else</span>
				            </div>
				            <div class="col-xs-6 col-sm-3 placeholder">
				              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
				              <h4>Label</h4>
				              <span class="text-muted">Something else</span>
				            </div>
				          </div>

				          <h2 class="sub-header">Section title</h2>
				          <div class="table-responsive">
				            <table class="table table-striped">
				              <thead>
				                <tr>
				                  <th>#</th>
				                  <th>Header</th>
				                  <th>Header</th>
				                  <th>Header</th>
				                  <th>Header</th>
				                </tr>
				              </thead>
				              <tbody>
				                <tr>
				                  <td>1,001</td>
				                  <td>Lorem</td>
				                  <td>ipsum</td>
				                  <td>dolor</td>
				                  <td>sit</td>
				                </tr>
				                <tr>
				                  <td>1,002</td>
				                  <td>amet</td>
				                  <td>consectetur</td>
				                  <td>adipiscing</td>
				                  <td>elit</td>
				                </tr>
				                <tr>
				                  <td>1,003</td>
				                  <td>Integer</td>
				                  <td>nec</td>
				                  <td>odio</td>
				                  <td>Praesent</td>
				                </tr>
				              </tbody>
				            </table>
				          </div>
				        </div>
			   </div>
		</div> <!-- End container-fluid-->
</body>
</html>