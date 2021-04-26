<%@page import="pms.javaee.dao.ProjectManagerDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.ProjectManagers"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
ProjectManagerDao.delete(u);  
response.sendRedirect("viewpmanagers.jsp");  
%>