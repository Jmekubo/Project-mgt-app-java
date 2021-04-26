<!DOCTYPE html>  
<html>  
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
	.new-location-form{
		width: 400px;
		margin: 0 auto;
		padding: 30px 0;
	}
	.new-location-form h2{
		color: #636363;
        margin: 0 0 15px;
		position: relative;
		text-align: center;
    }
	.new-location-form h2:before, .new-location-form h2:after{
		content: "";
		height: 2px;
		width: 30%;
		background: #d4d4d4;
		position: absolute;
		top: 50%;
		z-index: 2;
	}	
	.new-location-form h2:before{
		left: 0;
	}
	.new-location-form h2:after{
		right: 0;
	}
    .new-location-form .hint-text{
		color: #999;
		margin-bottom: 30px;
		text-align: center;
	}
    .new-location-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #f2f3f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.new-location-form .form-group{
		margin-bottom: 20px;
	}
	.new-location-form input[type="checkbox"]{
		margin-top: 3px;
	}
	.new-location-form .btn{        
        font-size: 16px;
        font-weight: bold;		
		min-width: 140px;
        outline: none !important;
    }
	.new-location-form .row div:first-child{
		padding-right: 10px;
	}
	.new-location-form .row div:last-child{
		padding-left: 10px;
	}    	
    .new-location-form a{
		color: #fff;
		text-decoration: none;
	}
    .new-location-form a:hover{
		text-decoration: none;
	}
	.new-location-form form a{
		color: #5cb85c;
		text-decoration: none;
	}	
	.new-location-form form a:hover{
		text-decoration: none;
	}  
</style>

</head>  
<body>  

<div class="new-location-form">
    <form name=form1 action="addlocation.jsp" method="post">
		<h2>New Location</h2>
		
        <div class="form-group">
        	<input type="text" class="form-control" name="region" placeholder="Region" required="required">
        </div>
		<div class="form-group">
            <input type="text" class="form-control" name="city" placeholder="City" required="required">
        </div> 
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Add Location</button>
        </div>
    </form>
	<div class="text-center">Back to Customer List <a href="viewlocations.jsp">View All Records</a></div>
</div>


</body>
</html> 