<%@page import="pms.javaee.dao.TeamLeaderDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.TeamLeader"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=TeamLeaderDao.update(u);  
response.sendRedirect("viewtleaders.jsp");  
%> 