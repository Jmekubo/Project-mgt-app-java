
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Project Manager Page</title>
</head>
<% // if Project Manager session is not set, redirect to Login page
if((request.getSession(false).getAttribute("admin")== null) )
{
%>
<jsp:forward page="/Login/Login.jsp"></jsp:forward>
<%} %>
<body>
<center><h2>Project Manager Home</h2></center>
Welcome <%=request.getAttribute("userName") %>
<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>
</body>
</html>