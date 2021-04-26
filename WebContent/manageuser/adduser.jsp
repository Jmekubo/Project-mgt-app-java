<%@page import="pms.javaee.dao.UserDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
 
<%

int i=UserDao.save(u);  
if(i>0){  
response.sendRedirect("adduser-success.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%> 