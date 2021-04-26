<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Search Customer projects</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
</head>
<body>
<h3>Customer project Status</h3>

<div class="container">
<br><br><br><br>
<form class="form-inline" method="post" action="./Reports/customerreport.jsp">
<input type="text" name="cusname" class="form-control" placeholder="Enter project details">
<button type="submit" name="save" class="btn btn-primary">Search</button>
</form>
</div>
</body>
</html>