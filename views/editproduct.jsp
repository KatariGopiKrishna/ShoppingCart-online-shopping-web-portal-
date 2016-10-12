<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta Name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


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
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="adminHome">Home</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="ManageProducts">Manage Products</a></li>
      <li><a href="ManageSuppliers">Manage Suppliers</a></li>
      <li><a href="ManageUsers">Manage Users</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<h2>Edit Product</h2>
  <form:form  commandName="Product" method="post" action="update" enctype="multipart/form-data">
   <table class="table table-bordered" >
     
      
               <form:input type="hidden" path="Id" value="${product.id}"/>
             
      
      <tr><td><form:label path="Name">Product Name :</form:label></td>
               <td><form:input path="Name" value="${product.name}"/></td>
           </tr>
               <tr><td><form:label path="Price">Product Price :</form:label></td>
               <td><form:input path="Price" value="${product.price}"/></td>
           </tr>
           <tr><td><form:label path="Description">Description :</form:label></td>
               <td><form:input path="Description" value="${product.description}"/></td>
           </tr>
                <tr><td><form:label path="primarymaterial">Primary Material :</form:label></td>
               <td><form:input path="primarymaterial" value="${product.primarymaterial}"/></td>
           </tr>
              <tr><td><form:label path="style">Style :</form:label></td>
               <td><form:input path="style" value="${product.style}"/></td>
           </tr>
              <tr><td><form:label path="warranty">Warranty :</form:label></td>
               <td><form:input path="warranty" value="${product.warranty}"/></td>
           </tr>
               <tr><td><form:label path="quantity">Product Quantity :</form:label></td>
               <td><form:input path="quantity" value="${product.quantity}"/></td>
               
           </tr>  
                
              <tr><td><form:label path="capacity">Capacity :</form:label></td>
               <td><form:input path="capacity" value="${product.capacity}"/></td>
           </tr>
           <tr><td><form:label path="img">Product Image :</form:label></td>
               <td><form:input path="img"  type="file" />
               <font color="red"><form:errors path="img"></form:errors></font></td><tr>
               <tr><td></td>
               <td><input type="submit" value="submit" class="btn-success"/></td>
           </tr>
           </table>
                      
  </form:form>   
  <nav class="navbar navbar-inverse navbar-bottom">
<div class="container-fluid">
<footer class="container-fluid text-center">
	<p><br><br><font color=white>©Cameron-All Rights Reserved
		2016</font></P>
		
	</footer>

</div>
  
</body>
</html>
