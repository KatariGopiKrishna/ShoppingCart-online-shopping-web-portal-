<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
  <title>Cameron</title>
  <meta charset="utf-8">
  <meta name="viewport"  content="width=device-width, initial-scale=1">
  <meta name="ROBOTS" content="NOINDEX, NOFOLLOW" />
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>  
  .mydiv {
   background-color: #FFF8DC;
   margin-top: 0px;
   height: 0px;
   width:0%;
   position: relative;
}
#mydiv_before {
   background-color: #333300;
   top: -0px;
   height: 300px;
   width: 680px;
   position: relative;
}
  
  #mydiv_after {
   background-color: #663300;
   top: 20px;
   height: 250px;
   width: 1140px;
   position: relative;
}
  
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
		
	.carousel-inner > .item > img,{  
    .carousel-inner > .item > a > img 
      width: 100%;
      margin:auto;}  
   </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="navbar-header"> 
<ul class="nav navbar-nav"></div>
<h1><span style=padding-left:20px><a href="UserHome"><img src="<c:url value="/resources/images/log.png"/>" width="50" height="50"><font  face="Gadget" size="40" color="white">Cameron</font> <i> <sub><font face="Gadget" color="black">for unseen photography...!!</a></font></sub>
<ul class="nav navbar-nav navbar-right"><li><a>Welcome...<%=session.getAttribute("loggedInUser")%></a></li></ul>

</nav>
<br><br><br><br>
<nav class="navbar navbar-inverse navbar-top">
  <div class="container-fluid">
    <font face="bold" size="5" color="White">
    <ul class="nav navbar-nav">
      <li><a href="UserHome">Home</a></li>
     <li><a href="ManageProducts">Products</a></li>
      <li><a href="userContact">Contact Us</a></li></ul>
        <ul class="nav navbar-nav navbar-right">
        <li><a href="${pageContext.request.contextPath}/Logout"><span class="glyphicon glyphicon-log-out"></span> LogOut</a></li></ul>
     </font>
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
         <img src="<c:url value="/resources/images/cam05.jpg"/>" alt="Chania" style="width:10000000px; height:300px">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/cam07.jpg"/>" alt="Chania" style="width:10000000px; height:300px">
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/images/cam13.jpg"/>" alt="Chania" style="width:10000000px;height:300px"> 
      </div>
      
      
       <div class="item">
         <img src="<c:url value="/resources/images/cam09.png"/>" alt="Chania" style="width:10000000px;height:300px">
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
  <br><br>
  <div class="mydiv">
<div class="mydiv" id="mydiv_before">
<span style=padding-left:20px>
<font face="Bold" size="40" color="white"> New products,
Great prices....!!</font><br></span>
<br><br>
<font face="Bold" size="5" color="white"><p>Cameron is a leading Online Camera Store. We provide an unparalleled selection of the very best quality products, an easy and comfortable shopping experience, expedited shipping offers, and exceptional customer service. Check out our collection of new arrivals, best-sellers, and clearance items today.</p>
</font></div></div>
<span style=padding-left:695px>
<iframe width=450px height=300px src="https://www.youtube.com/embed/LSb1f_15ev0" frameborder="0" allowfullscreen></iframe></span>
<br><br>


 <div class="mydiv">
  <div id="mydiv_after">
  
  </div></div>
  
  <br>
 
<div class="container">
            
  <div class="row">
    <div class="col-sm-4">
          <br><br><br>
        <a href="ManageProducts"><img src="<c:url value="/resources/images/cam01.jpg"/>" alt="Pulpit Rock" style="width:300px;height:150px"></a>
             </div><br><br><br>
    <div class="col-sm-4">
           
        <a href="ManageProducts"> <img src="<c:url value="/resources/images/cam02.jpg"/>" alt="Mustiers Sainte Marie" style="width:300px;height:150px">
         
    </div>
    <div class="col-sm-4">
      <a href="enter pro?data=table">
          <a href="ManageProducts"> <img src="<c:url value="/resources/images/cam08.jpg"/>" alt="Cinque Terre" style="width:300px;height:150px">
      </a>
    </div>
  </div>
</div>

</nav>
<br><br><br><br>
<nav class="navbar navbar-inverse navbar">
  <div class="container-fluid">
    <font face="bold" size="5" color="White">
<center>Our Best Brands</center>
  </font></div></nav>
  

 <marquee>
  <img src="<c:url value="/resources/images/mar1.jpg"/>" alt="Pulpit Rock" style="width:50px;height:50px"><span style=padding-left:70px> </span>
  <img src="<c:url value="/resources/images/mar2.jpg"/>" alt="Pulpit Rock" style="width:50px;height:50px"><span style=padding-left:70px> </span>
  <img src="<c:url value="/resources/images/mar3.jpg"/>" alt="Pulpit Rock" style="width:50px;height:50px"><span style=padding-left:70px> </span>
  <img src="<c:url value="/resources/images/mar4.jpg"/>" alt="Pulpit Rock" style="width:50px;height:50px"><span style=padding-left:70px> </span>
  <img src="<c:url value="/resources/images/mar5.jpg"/>" alt="Pulpit Rock" style="width:50px;height:50px"><span style=padding-left:70px> </span>
  <img src="<c:url value="/resources/images/mar6.jpg"/>" alt="Pulpit Rock" style="width:50px;height:50px"><span style=padding-left:70px> </span>
  <img src="<c:url value="/resources/images/mar7.jpg"/>" alt="Pulpit Rock" style="width:50px;height:50px"><span style=padding-left:70px> </span>
  <img src="<c:url value="/resources/images/mar8.jpg"/>" alt="Pulpit Rock" style="width:50px;height:50px"><span style=padding-left:70px> </span>
 </marquee>
 <br><br>
  


<nav class="navbar navbar-inverse navbar-bottom">
<div class="container-fluid">
<footer class="container-fluid text-center">
	<p><br><br><font color=white>©Cameron-All Rights Reserved
		2016</font></P>
		
	</footer>

</div>
</body>
</html>