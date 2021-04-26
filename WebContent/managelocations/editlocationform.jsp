<!DOCTYPE html>  
<html>  
<head>  
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">         
	<script src="../js/bootstrap.min.js"></script>
	<script src="./js/jquery-3.4.1.min.js"></script> 
</head>  
<body>  
	<%@page import="pms.javaee.dao.LocationDao,pms.javaee.model.Location"%>  
	 
	<%  
	String id=request.getParameter("LocId");  
	Location u=LocationDao.getRecordById(Integer.parseInt(id));   
	%>  
  
<h4>Edit Location</h4>  
<form action="editlocation.jsp" method="post">  
	<input type="hidden" name="locId" value="<%=u.getLocId() %>"/>  
	<table class="table table-hover table-striped row justify-content-left">  
		 
		<tr>
			<td>Region:</td>
			<td><input type="text" name="region" value="<%=u.getRegion()%>" class="form-control" required/></td>
			</tr>    
			<tr>
			<td>City:</td>
			<td><input type="text" name="city" value="<%= u.getCity()%>" class="form-control" required/></td>
			</tr> 
			
			<tr>
			<td colspan="2"><input type="submit"  class="btn btn-primary" value="Edit Location" class="form-control" required/></td>
		</tr>  
</table>  
</form>  
  <br><a href="viewlocations.jsp" class="btn btn-primary">View All Records</a> 
</body>  
</html> 