<%@page import="pms.javaee.dao.TaskDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.Task"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
TaskDao.delete(u);  
response.sendRedirect("viewtasks.jsp");  
%>