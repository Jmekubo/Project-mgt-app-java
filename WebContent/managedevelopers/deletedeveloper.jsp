<%@page import="pms.javaee.dao.DeveloperDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.Developer"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
DeveloperDao.delete(u);  
response.sendRedirect("viewdevelopers.jsp");  
%>