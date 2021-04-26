<%@page import="pms.javaee.dao.ProjectDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.Projects"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
 
<%

int i=ProjectDao.save(u);  
if(i>0){  
response.sendRedirect("addproject-success.jsp");  
}else{  
response.sendRedirect("addproject-error.jsp");  
}  
%> 
