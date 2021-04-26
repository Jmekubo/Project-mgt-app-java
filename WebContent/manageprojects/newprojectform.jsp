<!DOCTYPE html>  
<html>  
<head>  
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>        
 <style type="text/css">
	body{
		color: #fff;
		background: #63738a;
		font-family: 'Roboto', sans-serif;
	}
    .form-control{
		height: 50px;
		box-shadow: none;
		color: #969fa4;
	}
	.form-control:focus{
		border-color: #5cb85c;
	}
    .form-control, .btn{        
        border-radius: 3px;
    }
	.new-project-form{
		width: 600px;
		margin: 0 auto;
		padding: 30px 0;
	}
	.new-project-form h2{
		color: #636363;
        margin: 0 0 15px;
		position: relative;
		text-align: center;
    }
	.new-project-form h2:before, .new-project-form h2:after{
		content: "";
		height: 2px;
		width: 30%;
		background: #d4d4d4;
		position: absolute;
		top: 50%;
		z-index: 2;
	}	
	.new-project-form h2:before{
		left: 0;
	}
	.new-project-form h2:after{
		right: 0;
	}
    .new-project-form .hint-text{
		color: #999;
		margin-bottom: 30px;
		text-align: center;
	}
    .new-project-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #f2f3f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.new-project-form .form-group{
		margin-bottom: 20px;
	}
	.new-project-form input[type="checkbox"]{
		margin-top: 3px;
	}
	.new-project-form .btn{        
        font-size: 16px;
        font-weight: bold;		
		min-width: 140px;
        outline: none !important;
    }
	.new-project-form .row div:first-child{
		padding-right: 10px;
	}
	.new-project-form .row div:last-child{
		padding-left: 10px;
	}    	
    .new-project-form a{
		color: #fff;
		text-decoration: none;
	}
    .new-project-form a:hover{
		text-decoration: none;
	}
	.new-project-form form a{
		color: #5cb85c;
		text-decoration: none;
	}	
	.new-project-form form a:hover{
		text-decoration: none;
	}  
</style>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 	<%@page import="java.sql.*"%>
 	
    <script> 
    $(function () {
        $("#datepicker").datepicker({
        	defaultDate: "+1w",
        	dateFormat: 'yy/mm/dd',
        	changeMonth: true,
        	changeYear:true,
			numberOfMonths: 1,
			onClose: function( selectedDate ) {
			$( "#startdate" ).datepicker( "option", "minDate", selectedDate );
			}

        });
    });    

    $(function () {
        $("#datepicker2").datepicker({
        	defaultDate: "+1w",
        	dateFormat: 'yy/mm/dd',
        	changeMonth: true,
        	changeYear:true,
			numberOfMonths: 1,
			onClose: function( selectedDate ) {
			$( "#enddate" ).datepicker( "option", "maxDate", selectedDate );
			}
        });
    });
	</script>

	

</head>  
<body>

<div class="new-project-form">
    <form name=form1 action="addproject.jsp" method="post">
		<h2>New Project</h2>
		
		<div class="form-group">
       	 <div class="form-group">
        <select name="custId" id="first-choice" class="form-control"  required>
		 		<option  value="-1"> Select Customer</option>
			 <%
			 try
	
			 {
				 
				 String Query ="select * from customers";
				  Class.forName("com.mysql.jdbc.Driver").newInstance();  
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke"); 
				 	Statement stm = con.createStatement();
					ResultSet rs = stm.executeQuery(Query);
						 while(rs.next())
					 {
						 %>
						 <option value ="<%=rs.getInt("custId") %>"><%=rs.getString("customername") %></option>
						 
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
       	<select name="pmId" id="first-choice" class="form-control"  required>
		 		<option  value="-1"> Select Project Manager</option>
			 <%
			 try
	
			 {
				 
				 String Query ="select * from projectmanagers";
				  Class.forName("com.mysql.jdbc.Driver").newInstance();  
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke"); 
				 	Statement stm = con.createStatement();
					ResultSet rs = stm.executeQuery(Query);
						 while(rs.next())
					 {
						 %>
						 <option value ="<%=rs.getInt("pmId") %>"><%=rs.getString("lastname") %></option>
						 
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
        	<select name="temId" id="first-choice" class="form-control"  required>
		 		<option  value="-1"> Select Team Leader</option>
			 <%
			 try
	
			 {
				 
				 String Query ="select * from teamleaders";
				  Class.forName("com.mysql.jdbc.Driver").newInstance();  
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke"); 
				 	Statement stm = con.createStatement();
					ResultSet rs = stm.executeQuery(Query);
						 while(rs.next())
					 {
						 %>
						 <option value ="<%=rs.getInt("temId") %>"><%=rs.getString("lastname") %></option>
						 
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
        	<textarea rows="8" cols="80" name="projectdetails" class="form-control" placeholder="Enter project details" required></textarea>
        </div>
		<div class="form-group">
            <input type="date" name="startdate" id="datepicker" placeholder="defaultDate"  value=<%= request.getParameter("startdate") %> class="form-control" required/>
        </div>
		<div class="form-group">
            <input type="date" name="enddate" id="datepicker2" placeholder="defaultDate" value=<%= request.getParameter("enddate") %> class="form-control" required/>
        </div> 
               
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Add Project</button>
        </div>
    </form>
	<div class="text-center">Back to Project List <a href="viewprojects.jsp">View All Records</a></div>
</div>
  

	

</body>

</html> 