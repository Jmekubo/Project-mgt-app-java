
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
div.form
{
    display: block;
    text-align: center;
}
form
{
    display: inline-block;
    margin-left: auto;
    margin-right: auto;
    text-align: left;
}
h1, h2, h3, h4, h5, {
    font-family: 'Corben', 'Roboto', sans-serif, serif;
}
p, div {
    font-family: 'Nobile', Helvetica, Arial, sans-serif;
}
  body {
        color: #566787;
        background: #f7f5f2;
		font-family: 'Roboto', sans-serif;
	}
  .form-control, .btn{        
        border-radius: 3px;
    }
</style>


<title>Login</title>
</head>
<body>
	<div class="form">
		<br><br>
		<h2 style="font-size:50px;">PROJECT MANAGEMENT SYSTEM </h2>
		<br><br><br>
		<form name="form" action="<%=request.getContextPath()%>
		/LoginServlet" method="post">
		
		<h4>Login to Proceed:</h4><br>
		Username:<br>
		<input type="text"  class="form-control" name="username" /><br>
		
		Password:<br>
		<input type="password"  class="form-control" name="password" /><br><br><br>
		
		<input type="submit" class="btn btn-success btn-lg btn-block" value="Login"></input><br><br><br>
		
		<input type="reset" class="btn btn-primary btn-lg btn-block" value="Reset"></input><br>
		
		<span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span>


		</form>
	</div>
</body>
</html>