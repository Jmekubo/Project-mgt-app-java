<%@page import="pms.javaee.dao.LocationDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.Location"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
 
<%

int i=LocationDao.save(u);  
if(i>0){  
response.sendRedirect("addlocation-success.jsp");  
}else{  
response.sendRedirect("addlocation-error.jsp");  
}  
%> 