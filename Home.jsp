<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
  <title>Shopping Cart</title>
  <meta charset="utf-8">
  <meta name="viewport"  content="width=device-width, initial-scale=1">
  <meta name="ROBOTS" content="NOINDEX, NOFOLLOW" />
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>     
  .navbar-inverse{
    background-color:rgb(0,100,200);} 
   
		 
	.carousel-inner > .item > img,{  
    .carousel-inner > .item > a > img 
      width: 10%;
      margin:0;}
   </style>
</head>
<body>
<h1><font  face="Gadget" size="50" color="blue"><span style=padding-left:20px><img src="<c:url value="/resources/images/cart.png"/>" width="50" height="50">ShoppingCart</font> <i> <sub>shop from anywhere...!</sub></span></a></i></h1>

<nav class="navbar navbar-inverse">

  <div class="container-fluid">
    <div class="navbar-header"> </div><font face="bold" size="5" color="White">
    <ul class="nav navbar-nav">
      <li><a href="/">Home</a></li>
      <li><a href="ret">View All</a></li>
      <li><a href="admin1">Admin</a></li>
       <li><a href="Contact us">Contact us</a></li>
       <li style=padding-left:500><a href="Register"><span class="glyphicon glyphicon-user"></span>Sign up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
     </ul></font>
  </div>
</nav>
  

<div class="container">
  
    <div class="center-block">  
    
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
    
   <!-- Wrapper for slides -->
    
    
    <div class="carousel-inner" role="listbox">
    
    
    
    
      <div class="item active">
         <img src="<c:url value="/resources/images/cam05.jpg"/>" alt="Chania" style="width:1000px; height:400px">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/cam07.jpg"/>" alt="Chania" style="width:1000px; height:400px">
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/images/cam13.jpg"/>" alt="Chania" style="width:1000px;height:400px"> 
      </div>
      
      
       <div class="item">
         <img src="<c:url value="/resources/images/cam09.png"/>" alt="Chania" style="width:1000px;height:400px">
      </div>
      
          <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div></div></div>
 
<div class="container">
            
  <div class="row">
    <div class="col-sm-4">
      <a href="enter">
          <br><br><br>
         <img src="<c:url value="/resources/images/cam01.jpg"/>" alt="Pulpit Rock" style="width:300px;height:150px">
             </div><br><br><br>
    <div class="col-sm-4">
           
         <img src="<c:url value="/resources/images/cam02.jpg"/>" alt="Mustiers Sainte Marie" style="width:300px;height:150px">
         
    </div>
    <div class="col-sm-4">
      <a href="enter pro?data=table">
           <img src="<c:url value="/resources/images/cam08.jpg"/>" alt="Cinque Terre" style="width:300px;height:150px">
      </a>
    </div>
  </div>
</div>
</body>
</html>