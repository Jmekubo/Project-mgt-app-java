<%@page import="pms.javaee.dao.TaskDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.Task"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
 
<%

int i=TaskDao.save(u);  
if(i>0){  
response.sendRedirect("addtask-success.jsp");  
}else{  
response.sendRedirect("addtask-error.jsp");  
}  
%> 
