<%@page import="pms.javaee.dao.LocationDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.Location"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=LocationDao.update(u);  
response.sendRedirect("viewlocations.jsp");  
%> 