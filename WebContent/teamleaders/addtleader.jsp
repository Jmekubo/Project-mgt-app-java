<%@page import="pms.javaee.dao.TeamLeaderDao"%>  
<jsp:useBean id="u" class="pms.javaee.model.TeamLeader"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
 
<%

int i=TeamLeaderDao.save(u);  
if(i>0){  
response.sendRedirect("addtleader-success.jsp");  
}else{  
response.sendRedirect("addtleader-error.jsp");  
}  
%> 
