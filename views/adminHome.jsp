<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
  <title>AdminHome</title>
  <meta charset="utf-8">
  <meta name="viewport"  content="width=device-width, initial-scale=1">
  <meta name="ROBOTS" content="NOINDEX, NOFOLLOW" />
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>  
  
  .navbar-inverse .navbar-nav > li > a {
            color: white !important;
        }

         

        .navbar-collapse ul li {
            padding-top: 0px;
            padding-bottom: 0px;
        }

            .navbar-collapse ul li a {
                padding-top: 0px;
                padding-bottom: 0px;
            }

        .navbar-brand img {
        	
            width: 200px;
            height: 40px;
        }

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
<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="navbar-header"> 
<ul class="nav navbar-nav"></div>
<h1><span style=padding-left:20px><a href="adminHome"><img src="<c:url value="/resources/images/log.png"/>" width="50" height="50"><font  face="Gadget" size="40" color="white">Cameron</font> <i> <sub><font face="Gadget" color="black">for unseen photography...!!</a></font></sub>

</span></a></i></h1>
</nav>
<br><br><br><br>

<nav class="navbar navbar-inverse navbar-top">
  <div class="container-fluid">
    <font face="bold" size="5" color="White">
    <ul class="nav navbar-nav">
    <ul class="nav navbar-nav navbar-left">
    <li><a>Welcome...<%=session.getAttribute("loggedInUser")%></a></li></ul></ul>
   <div><ul class="nav navbar-nav navbar-right">
      <li><a href="${pageContext.request.contextPath}/Logout"><span class="glyphicon glyphicon-log-out"></span>LogOut</a></li> </ul>
   </div>
    </font>
  </div>
  </nav>
   <div class="container">
            
  <div class="row">
    <div class="col-sm-4">
          <br><br><br>
       <span style=padding-left:20px> <a href="ManageSuppliers"><img src="<c:url value="/resources/images/supplier.jpg"/>" alt="Pulpit Rock" style="width:300px;height:150px"></a>
            </span> </div><br><br><br>
    <div class="col-sm-4">
           
        <a href="ManageProducts"> <img src="<c:url value="/resources/images/product.jpg"/>" alt="Mustiers Sainte Marie" style="width:300px;height:150px">
         
    </div>
    <div class="col-sm-4">
      <a href="enter pro?data=table">
          <a href="ManageUsers"> <img src="<c:url value="/resources/images/users.png"/>" alt="Cinque Terre" style="width:300px;height:150px">
      </a>
  
 

</div>
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