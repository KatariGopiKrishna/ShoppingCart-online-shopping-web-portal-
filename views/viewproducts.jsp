<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<html>

<head>
     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Product Details</title>

<style type="text/css">
	
     .navbar-inverse {
            background-color:#2F4F4F;
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
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <sec:authorize access="hasRole('ROLE_ADMIN')">
      <a class="navbar-brand" href="adminHome">Cameron</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="adminHome">Home</a></li>
     <li><a href="ManageProducts">Products</a></li>
    </ul>
    </sec:authorize>
    <sec:authorize access="hasRole('ROLE_USER')">
      <a class="navbar-brand" href="UserHome">Cameron</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="UserHome">Home</a></li>
     <li><a href="ManageProducts">Products</a></li>
    </ul>
    </sec:authorize>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
      <div class="container">
            <table class="table table-hover table-bordered">
            <tr><td rowspan="5">
            <img src='<x:url value="/resources/images/${product.image}"/>'/></td></tr>
            <tr><td><font color=blue>Product Id:</font> ${product.id}</td></tr>
            <tr><td><font color=blue>Product Name:</font> ${product.name}</td></tr>
            <tr><td><font color=blue>Product Price:</font> ${product.price}</td></tr>
            <tr><td><font color=blue>Product Description:</font> ${product.description}</td></tr>
            
            
            <tr><td></td><td>
            <sec:authorize access="hasRole('ROLE_USER')"><a href="viewcart?id=${product.id}" class="btn btn-primary">Add to Cart</a>
              </sec:authorize></td></tr>               
            </table>
      </div>
      <nav class="navbar navbar-inverse navbar-bottom">
<div class="container-fluid">
<footer class="container-fluid text-center">
	<p><br><br><font color=white>©Cameron-All Rights Reserved
		2016</font></P>
		
	</footer>

</div>
   </body>
</html>
