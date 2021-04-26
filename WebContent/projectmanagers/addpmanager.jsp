<%@page import="pms.javaee.dao.ProjectManagerDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.ProjectManagers"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
 
<%

int i=ProjectManagerDao.save(u);  
if(i>0){  
response.sendRedirect("addpmanager-success.jsp");  
}else{  
response.sendRedirect("addpmanager-error.jsp");  
}  
%> 
