
package pms.javaee.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pms.javaee.beans.LoginBean;
import pms.javaee.dao.LoginDao;
public class LoginServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
public LoginServlet() {
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
String userName = request.getParameter("username");
String password = request.getParameter("password");
LoginBean loginBean = new LoginBean();
loginBean.setUserName(userName);
loginBean.setPassword(password);
LoginDao loginDao = new LoginDao();
try
{
String userValidate = loginDao.authenticateUser(loginBean);
if(userValidate.equals("ProjectManager_Role"))
{
System.out.println("Admin's Home");
HttpSession session = request.getSession(); //Creating a session
session.setAttribute("admin", userName); //setting session attribute
request.setAttribute("userName", userName);
request.getRequestDispatcher("/admin/admin_home.jsp").forward(request, response);
}
else if(userValidate.equals("TeamLeader_Role"))
{
System.out.println("Team Leader's Home");
HttpSession session = request.getSession();
session.setAttribute("tleader", userName);
request.setAttribute("userName", userName);
request.getRequestDispatcher("/admin/admin_tleader.jsp").forward(request, response);
}
else if(userValidate.equals("Customer_Role"))
{
System.out.println("Customer's Home");
HttpSession session = request.getSession();
session.setMaxInactiveInterval(10*60);
session.setAttribute("customer", userName);
request.setAttribute("userName", userName);
request.getRequestDispatcher("/Reports/searchcustomer.jsp").forward(request, response);
}
else
{
System.out.println("Error message = "+userValidate);
request.setAttribute("errMessage", userValidate);
request.getRequestDispatcher("/Login/Login.jsp").forward(request, response);
}
}
catch (IOException e1)
{
e1.printStackTrace();
}
catch (Exception e2)
{
e2.printStackTrace();
}
} 
}
