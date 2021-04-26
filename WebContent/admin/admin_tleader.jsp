
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
<% // if Project Manager session is not set, redirect to Login page
if((request.getSession(false).getAttribute("tleader")== null) )
{
%>
<jsp:forward page="/Login/Login.jsp"></jsp:forward>
<%} %>
 <style type="text/css">
	body{
		color: #fff;
		background: #63738a;
		font-family: 'Roboto', sans-serif;
	}
    .form-control{
		height: 40px;
		box-shadow: none;
		color: #969fa4;
	}
	.form-control:focus{
		border-color: #5cb85c;
	}
    .form-control, .btn{        
        border-radius: 3px;
    }
	.admin-form{
		width: 800px;
		margin: 0 auto;
		padding: 30px 0;
	}
	.admin-form h2{
		color: #636363;
        margin: 0 0 15px;
		position: relative;
		text-align: center;
    }
	.admin-form h2:before, .admin-form h2:after{
		content: "";
		height: 2px;
		width: 30%;
		background: #d4d4d4;
		position: absolute;
		top: 50%;
		z-index: 2;
	}	
	.admin-form h2:before{
		left: 0;
	}
	.admin-form h2:after{
		right: 0;
	}
    .admin-form .hint-text{
		color: #999;
		margin-bottom: 30px;
		text-align: center;
	}
    .admin-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #f2f3f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.admin-form .form-group{
		margin-bottom: 20px;
	}
	.admin-form input[type="checkbox"]{
		margin-top: 3px;
	}
	.admin-form .btn{        
        font-size: 16px;
        font-weight: bold;		
		min-width: 140px;
        outline: none !important;
    }
	.admin-form .row div:first-child{
		padding-right: 10px;
	}
	.admin-form .row div:last-child{
		padding-left: 10px;
	}    	
    .admin-form a{
		color: #fff;
		text-decoration: none;
	}
    .admin-form a:hover{
		text-decoration: none;
	}
	.admin-form form a{
		color: #5cb85c;
		text-decoration: none;
	}	
	.admin-form form a:hover{
		text-decoration: none;
	}  
</style>


<title>TeamLeader</title>
</head>
<body>
Welcome <%=request.getAttribute("userName") %>
<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>
	<div class="admin-form">
		
		<form id=form1>
		
		<h4 style="font-size:40px;"style= "text-align:center;">PROJECT MANAGEMENT SYSTEM </h4>
		<br><br>
		
		
		<div class="form-group">
			<a href="./managetasks/viewtasks.jsp" >Manage Tasks</a>
		</div>
		
		<div class="form-group">
			<a href="./Reports/projectstatus.jsp" >View Project Progress</a>
		</div>
		<div class="form-group">
			<a href="./Reports/project_critical_path.jsp" >View Project Critical Path</a>
		</div>
		
		</form>
	</div>
</body>
</html>