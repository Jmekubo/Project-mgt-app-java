<%@page import="pms.javaee.dao.TeamDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.Team"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=TeamDao.update(u);  
response.sendRedirect("viewteams.jsp");  
%> 