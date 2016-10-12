<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<html>
<head>

  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<title>Manage Users</title>
<style type="text/css">
	
     .navbar-inverse {
            background-color: #2F4F4F;
        }
   
		  .navbar-inverse .navbar-header{
  color:#FFFFFF
  }
  .navbar-inverse .navbar-header:hover,
  .navbar-inverse .navbar-header:focus{
    color:#18BC9C;
    background-color: transparent;
    }
    
    .navbar-inverse.navbar-nav > li > a {
    color:#FFFFFF;
    }
   
    .navbar-inverse .navbar-nav > li > a:hover,
    .navbar-inverse .navbar-nav > li > a:focus{
    color:#18BC9C;
		} 
		
</style>

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="adminHome">Home</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="ManageProducts">Manage Products</a></li>
      <li><a href="ManageSuppliers">Manage Suppliers</a></li>
      <li  class="active"><a href="ManageUsers">Manage Users</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
  <li><a href="${pageContext.request.contextPath}/Logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<h2>Manage Users</h2>
<div class="container">
<div ng-app="myApp" ng-controller="customersCtrl">
<table class="table table-striped table-hover">
  <tr>
       <th>User Id</th>
       <th>User Name</th>
  	   <th>Status</th>
       <th>Action</th>
  </tr>
  <tr ng-repeat="y in names | filter:searchBy">
    <td>{{y.id}}</td>
    <td>{{y.username}}</td>
    <td>{{y.status}}</td>
    <td>
    <a href="${pageContext.servletContext.contextPath}/viewuser?id={{y.id}}" class="btn btn-info"class="btn btn-info"><span>View</span></a>

    <a href="${pageContext.servletContext.contextPath}/edituser?id={{y.id}}" class="btn btn-primary"><span>Edit</span></a>
    <a href="${pageContext.servletContext.contextPath}/delete?id={{y.id}}" class="btn btn-danger"><span>Delete</span></a>

   </td>  
  </tr>
</table>



</div>

<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("listud")
    .then(function (response) {$scope.names = response.data;});
});
</script>
</div>
	<footer class="container-fluid text-center">
		<p>©Cameron-All Rights Reserved</p>
		<P>2016</P>
	</footer>



</body>
</html>