<%@page import="pms.javaee.dao.ProjectDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.Projects"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=ProjectDao.update(u);  
response.sendRedirect("viewprojects.jsp");  
%> 