<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
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
      <a class="navbar-brand" href="ref">Camaron</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="ref">Home</a></li>
      <li><a href="Products">Products</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li class="active"><a><span class="glyphicon glyphicon-log-in"></span>Signup</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
			<div class="container">
				<form:form commandName="User" method="post" action="storeUser">
					<div class="form-group">
						<label for="username">UserName:</label>
						<form:errors path="username" cssStyle="color: #ff0000" />
						<form:input path="username" id="username" class="form-Control" />
					</div>

					<div class="form-group">
						<label for="password">Password:</label> 
						<form:errors path="password" cssStyle="color: #ff0000" />
						<form:input type="password" path="password" id="password"
							class="form-Control" />
					</div>
					<div class="form-group">
						<label for="confirmpassword">Confirm Password:</label>
						<form:errors path="confirmpassword" cssStyle="color: #ff0000" />
						<form:input type="password" path="confirmpassword" id="password"
							class="form-Control" />
					</div>
					<div class="form-group">
						<label for="mailid">Email:</label>
						<form:errors path="mailid" cssStyle="color: #ff0000" />
						<form:input type="email" pattern="[^ @]*@[^ @]*" path="mailid" id="email" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="phone">Mobile number:</label>
						<form:errors path="phone" cssStyle="color: #ff0000" />
						<form:input path="phone" id="phone" class="form-Control" />
					</div>
					<div class="form-group">
						<label for="address">Address:</label>
						<form:errors path="address" cssStyle="color: #ff0000" />
						<form:input path="address" id="address" class="form-Control" />
					</div>
					
		
			<button	 type="submit" class="btn btn-default">Submit</button>	
			<button type="reset" class="btn btn-default">Reset</button>
			<a href="ref"><button type="cancel" class="btn btn-default">cancel</a> </button>
			</form:form>			
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