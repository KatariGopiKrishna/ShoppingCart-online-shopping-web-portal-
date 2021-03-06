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
<title>Products</title>

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
      <a class="navbar-brand" href="ref">Home</a>
      
    </div>
    <ul class="nav navbar-nav">

      <li class="active"><a href="Products">Products</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
  <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<h2>Products</h2>
<div class="container">
<div ng-app="myApp" ng-controller="customersCtrl">
<p>     
       <div class="input-group col-md-11 col-sm-6 col-xs-9 navbar-left" style="padding:10px;">
       <input type="text" class="form-control" placeholder="Enter The Search Terms Here" ng-model="searchBy.Name" />
       <span class="input-group-btn">
       <button class="btn btn-primary" type="button">Search</button>
    </span>  
  </div>
 </p>
<table class="table table-striped table-hover">
  <tr>
       <th>Product Id</th>
       <th>Product Name</th>
       <th>Product Price</th>
       <th>Product Description</th>
       <th>Action</th>
  </tr>
  <tr ng-repeat="x in names | filter:searchBy">
    <td>{{x.Id}}</td>
    <td>{{x.Name}}</td>
    <td>{{x.Price}}</td>
    <td>{{x.Description}}</td>
    <td>
    <a href="${pageContext.servletContext.contextPath}/ShowProduct?id={{x.Id}}" class="btn btn-info"class="btn btn-info"><span>View</span></a>
  
   </td>  
  </tr>
</table>



</div>

<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("list")
    .then(function (response) {$scope.names = response.data;});
});
</script>
</div>
<nav class="navbar navbar-inverse navbar-fixed-bottom">
<div class="container-fluid">
<footer class="container-fluid text-center">
	<p><br><br><font color=white>©Cameron-All Rights Reserved
		2016</font></P>
		
	</footer>

</div>

</body>
</html>



