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
	.new-task-form{
		width: 600px;
		margin: 0 auto;
		padding: 30px 0;
	}
	.new-task-form h2{
		color: #636363;
        margin: 0 0 15px;
		position: relative;
		text-align: center;
    }
	.new-task-form h2:before, .new-task-form h2:after{
		content: "";
		height: 2px;
		width: 30%;
		background: #d4d4d4;
		position: absolute;
		top: 50%;
		z-index: 2;
	}	
	.new-task-form h2:before{
		left: 0;
	}
	.new-task-form h2:after{
		right: 0;
	}
    .new-task-form .hint-text{
		color: #999;
		margin-bottom: 30px;
		text-align: center;
	}
    .new-task-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #f2f3f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.new-task-form .form-group{
		margin-bottom: 20px;
	}
	.new-task-form input[type="checkbox"]{
		margin-top: 3px;
	}
	.new-task-form .btn{        
        font-size: 16px;
        font-weight: bold;		
		min-width: 140px;
        outline: none !important;
    }
	.new-task-form .row div:first-child{
		padding-right: 10px;
	}
	.new-task-form .row div:last-child{
		padding-left: 10px;
	}    	
    .new-task-form a{
		color: #fff;
		text-decoration: none;
	}
    .new-task-form a:hover{
		text-decoration: none;
	}
	.new-task-form form a{
		color: #5cb85c;
		text-decoration: none;
	}	
	.new-task-form form a:hover{
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

<div class="new-task-form">
    <form name=form1 action="addtask.jsp" method="post">
		<h2>New Task</h2>
		
		<div class="form-group">
       	 <div class="form-group">
        <select name="projId" id="first-choice" class="form-control"  required>
		 		<option  value="-1"> Select Project</option>
			 <%
			 try
	
			 {
				 
				 String Query ="select * from projects";
				  Class.forName("com.mysql.jdbc.Driver").newInstance();  
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke"); 
				 	Statement stm = con.createStatement();
					ResultSet rs = stm.executeQuery(Query);
						 while(rs.next())
					 {
						 %>
						 <option value ="<%=rs.getInt("projId") %>"><%=rs.getString("projectdetails") %></option>
						 
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
        	<select name="devId" id="first-choice" class="form-control"  required>
		 		<option  value="-1"> Select Developer</option>
			 <%
			 try
	
			 {
				 
				 String Query ="select * from developers";
				  Class.forName("com.mysql.jdbc.Driver").newInstance();  
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke"); 
				 	Statement stm = con.createStatement();
					ResultSet rs = stm.executeQuery(Query);
						 while(rs.next())
					 {
						 %>
						 <option value ="<%=rs.getInt("devId") %>"><%=rs.getString("lastname") %></option>
						 
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
        	<textarea rows="8" cols="80" name="taskdetails" class="form-control" placeholder="Enter task details" required></textarea>
        </div>
		<div class="form-group">
            <input type="date" name="startdate" id="datepicker" placeholder="defaultDate" value=<%= request.getParameter("startdate") %> class="form-control" required/>
        </div>
		<div class="form-group">
            <input type="date" name="enddate" id="datepicker2" placeholder="defaultDate" value=<%= request.getParameter("enddate") %> class="form-control" required/>
        </div> 
        <div class="form-group">
        	<label>25 % Completion Status:</label>
            <input type="radio" name="status" id="radiobutton" placeholder="Completetion Status" value="25% " class="form-control" />
        </div>
        <div class="form-group">
        	<label>50 % Completion Status:</label>
            <input type="radio" name="status" id="radiobutton" placeholder="Completetion Status" value="50% " class="form-control" />
        </div>
        <div class="form-group">
        	<label>75 % Completion Status:</label>
            <input type="radio" name="status" id="radiobutton" placeholder="Completetion Status" value="75% " class="form-control" />
        </div>
        <div class="form-group">
        	<label>100 % Completion Status:</label>
            <input type="radio" name="status" id="radiobutton" placeholder="Completetion Status" value="100% " class="form-control" />
        </div>       
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Add Task</button>
        </div>
    </form>
	<div class="text-center">Back to Task List <a href="viewtasks.jsp">View All Records</a></div>
</div>
  

	

</body>

</html> 