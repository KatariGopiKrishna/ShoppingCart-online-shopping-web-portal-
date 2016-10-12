<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style type="text/css">
.errorblock {
 color: #ff0000;
 background-color: #ffEEEE;
 border: 3px solid #ff0000;
 padding: 8px;
 margin: 16px;
}
.logoutblock {
 color: blue;
 background-color: lightgreen;
 border: 3px solid blue;
 padding: 8px;
 margin: 16px;
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
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="ref">Camaron</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="ref">Home</a></li>
      <li><a href="Products">Products</a></li>
    </ul>
     <ul class="nav navbar-nav navbar-right">
      	<li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
     </ul>
  </div>
</nav>
	<div id="central">
		<div class="content">
			<h1>Contact Form</h1>
			<p>Send your comments through this form and we will get back to
				you.</p>
			<div id="message">
				<form id="frmContact" name="frmContact" action="" method="POST"
					novalidate="novalidate">
					<div class="label">Name:</div>
					<div class="field">
						<input type="text" id="pp-name" name="name"
							placeholder="enter your name here" title="Please enter your name"
							class="required" aria-required="true" required>
					</div>
					<div class="label">Email:</div>
					<div class="field">
						<input type="text" id="pp-email" name="email"
							placeholder="enter your email address here"
							title="Please enter your email address" class="required email"
							aria-required="true" required>
					</div>
					<div class="label">Phone Number:</div>
					<div class="field">
						<input type="text" id="pp-phone" name="phone"
							placeholder="enter your phone number here"
							title="Please enter your phone number" class="required phone"
							aria-required="true" required>
					</div>
					<div class="label">Message:</div>
					<div class="field">
						<textarea id="about-project" name="message"
							placeholder="enter your message here"></textarea>
					</div><br><br>
					<div id="mail-status"></div>
					<input type="submit" name="submit" value="Send Message"
						id="send-message" style="clear: both;">
					
				</form>
			</div>
		</div>
		
		<!-- content -->
	</div>
	<!-- central -->
	<br><br><br>
	<nav class="navbar navbar-inverse navbar-bottom">
<div class="container-fluid">
<footer class="container-fluid text-center">
	<p><br><br><font color=white>©Cameron-All Rights Reserved
		2016</font></P>
		
	</footer>

</div>
</body>
</html>