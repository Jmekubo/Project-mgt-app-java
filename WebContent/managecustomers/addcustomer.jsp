<%@page import="pms.javaee.dao.CustomerDAO"%>  
<jsp:useBean id="u" class="pms.javaee.model.Customer"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
 
<%

int i=CustomerDAO.save(u);  
if(i>0){  
response.sendRedirect("addcustomer-success.jsp");  
}else{  
response.sendRedirect("addcustomer-error.jsp");  
}  
%> 