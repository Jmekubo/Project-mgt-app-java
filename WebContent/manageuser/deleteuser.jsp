<%@page import="pms.javaee.dao.UserDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>