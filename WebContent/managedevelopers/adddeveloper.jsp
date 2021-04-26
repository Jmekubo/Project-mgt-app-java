<%@page import="pms.javaee.dao.DeveloperDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.Developer"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
 
<%

int i=DeveloperDao.save(u);  
if(i>0){  
response.sendRedirect("adddeveloper-success.jsp");  
}else{  
response.sendRedirect("adddeveloper-error.jsp");  
}  
%> 
