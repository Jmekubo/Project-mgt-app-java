<!DOCTYPE html>  
<html>  
<head>  
<head>  
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
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
	.new-developer-form{
		width: 400px;
		margin: 0 auto;
		padding: 30px 0;
	}
	.new-developer-form h2{
		color: #636363;
        margin: 0 0 15px;
		position: relative;
		text-align: center;
    }
	.new-developer-form h2:before, .new-developer-form h2:after{
		content: "";
		height: 2px;
		width: 30%;
		background: #d4d4d4;
		position: absolute;
		top: 50%;
		z-index: 2;
	}	
	.new-developer-form h2:before{
		left: 0;
	}
	.new-developer-form h2:after{
		right: 0;
	}
    .new-developer-form .hint-text{
		color: #999;
		margin-bottom: 30px;
		text-align: center;
	}
    .new-developer-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #f2f3f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.new-developer-form .form-group{
		margin-bottom: 20px;
	}
	.new-developer-form input[type="checkbox"]{
		margin-top: 3px;
	}
	.new-developer-form .btn{        
        font-size: 16px;
        font-weight: bold;		
		min-width: 140px;
        outline: none !important;
    }
	.new-developer-form .row div:first-child{
		padding-right: 10px;
	}
	.new-developer-form .row div:last-child{
		padding-left: 10px;
	}    	
    .new-developer-form a{
		color: #fff;
		text-decoration: none;
	}
    .new-developer-form a:hover{
		text-decoration: none;
	}
	.new-developer-form form a{
		color: #5cb85c;
		text-decoration: none;
	}	
	.new-developer-form form a:hover{
		text-decoration: none;
	}  
</style>

 	<%@page import="pms.javaee.dao.DeveloperDao,pms.javaee.model.Developer"%>  
	 
	<%  
	String id=request.getParameter("devId");  
	Developer u=DeveloperDao.getRecordById(Integer.parseInt(id));   
	%> 
</head>  
<body>  


<div class="new-developer-form">
    <form  action="editdevelopers.jsp" method="post">
		<h2>Edit Developer</h2>
		<input type="hidden" name="devId" value="<%=u.getDevId() %>"/>
		
		<div class="form-group">
            <input type="text" class="form-control" name="firstname" value="<%= u.getFirstname()%>" placeholder="First Name" required="required">
        </div>
		<div class="form-group">
       		<input type="text" class="form-control" name="lastname" value="<%= u.getLastname()%>" placeholder="Last Name" required="required">
        </div>       
        <div class="form-group">
            <input type="text" class="form-control" name="phone" value="<%= u.getPhone()%>" placeholder="Phone" required="required">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="locId" value="<%= u.getLocId()%>" placeholder="LocationID" required="required" readonly>
        </div>
         <div class="form-group">
            <input type="text" class="form-control" name="userId" value="<%= u.getUserId()%>" placeholder="UserID" required="required" readonly>
        </div>  
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Edit Developer</button>
        </div>
    </form>
	<div class="text-center">Back to Developer List <a href="viewdevelopers.jsp">View All Records</a></div>
</div> 
  

</body>  
</html> 