<%@page import="pms.javaee.dao.TeamDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.Team"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
TeamDao.delete(u);  
response.sendRedirect("viewteams.jsp");  
%>