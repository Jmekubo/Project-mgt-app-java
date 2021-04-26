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
	.new-teamleader-form{
		width: 400px;
		margin: 0 auto;
		padding: 30px 0;
	}
	.new-teamleader-form h2{
		color: #636363;
        margin: 0 0 15px;
		position: relative;
		text-align: center;
    }
	.new-teamleader-form h2:before, .new-teamleader-form h2:after{
		content: "";
		height: 2px;
		width: 30%;
		background: #d4d4d4;
		position: absolute;
		top: 50%;
		z-index: 2;
	}	
	.new-teamleader-form h2:before{
		left: 0;
	}
	.new-teamleader-form h2:after{
		right: 0;
	}
    .new-teamleader-form .hint-text{
		color: #999;
		margin-bottom: 30px;
		text-align: center;
	}
    .new-teamleader-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #f2f3f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.new-teamleader-form .form-group{
		margin-bottom: 20px;
	}
	.new-teamleader-form input[type="checkbox"]{
		margin-top: 3px;
	}
	.new-teamleader-form .btn{        
        font-size: 16px;
        font-weight: bold;		
		min-width: 140px;
        outline: none !important;
    }
	.new-teamleader-form .row div:first-child{
		padding-right: 10px;
	}
	.new-teamleader-form .row div:last-child{
		padding-left: 10px;
	}    	
    .new-teamleader-form a{
		color: #fff;
		text-decoration: none;
	}
    .new-teamleader-form a:hover{
		text-decoration: none;
	}
	.new-teamleader-form form a{
		color: #5cb85c;
		text-decoration: none;
	}	
	.new-teamleader-form form a:hover{
		text-decoration: none;
	}
</style>
	<%@page import="java.sql.*"%>
</head>  
<body>  

	<div class="new-teamleader-form">
    <form name=form1 action="addtleader.jsp" method="post">
		<h2>New Team Leader</h2>

        <div class="form-group">
        	<input type="text" class="form-control" name="firstname" placeholder="FirstName" required="required">
        </div>
		<div class="form-group">
            <input type="text" class="form-control" name="lastname" placeholder="LastName" required="required">
        </div>
		<div class="form-group">
            <input type="text" class="form-control" name="phone" placeholder="Phone" required="required">
        </div>
        <div class="form-group">	
	       	<select name="locId"  id="first-choice" class="form-control">
			 <option  value="-1" > Select Team Leader </option>
		 <%
		 try

		 {
			 
			 String Query ="select * from location";
			  Class.forName("com.mysql.jdbc.Driver").newInstance();  
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke"); 
			 	Statement stm = con.createStatement();
				ResultSet rs = stm.executeQuery(Query);
					 while(rs.next())
				 {
					 %>
					 <option value ="<%=rs.getInt("locId") %>"><%=rs.getString("city") %></option>
					 
					 <%
				}
		 }
		 catch(Exception ex){
			 ex.printStackTrace();
			 out.println("Error" + ex.getMessage());
		 }
		 
		 %>
		</select>
		</div>
		<div></div>
        
        <div class="form-group">
       		
       	<select name="userId" id="first-choice" class="form-control">
		 <option  value="-1" > Select User Name </option>
		 <%
		 try

		 {
			 
			 String Query ="select * from users";
			  Class.forName("com.mysql.jdbc.Driver").newInstance();  
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke"); 
			 	Statement stm = con.createStatement();
				ResultSet rs = stm.executeQuery(Query);
					 while(rs.next())
				 {
					 %>
					 <option value ="<%=rs.getInt("userId") %>"><%=rs.getString("username") %></option>
					 
					 <%
				}
		 }
		 catch(Exception ex){
			 ex.printStackTrace();
			 out.println("Error" + ex.getMessage());
		 }
		 
		 %>
		</select>
        </div>
        <div></div>
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Add Team Leader</button>
        </div>
    </form>
	<div class="text-center">Back to Team leader List <a href="viewtleaders.jsp">View All Records</a></div>
</div>


	

</body>

</html> 