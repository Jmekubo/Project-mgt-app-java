<%@page import="pms.javaee.dao.CustomerDAO"%>  
<jsp:useBean id="u" class="pms.javaee.model.Customer"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=CustomerDAO.update(u);  
response.sendRedirect("viewcustomers.jsp");  
%> 