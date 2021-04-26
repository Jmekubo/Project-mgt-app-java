
package pms.javaee.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import pms.javaee.beans.LoginBean;
import pms.javaee.dbconn.Dbconn;

public class LoginDao {
public String authenticateUser(LoginBean loginBean)
{
String userName = loginBean.getUserName();
String password = loginBean.getPassword();
Connection con = null;
Statement statement = null;
ResultSet resultSet = null;
String userNameDB = "";
String passwordDB = "";
String roleDB = "";
try
{
con = Dbconn.createConnection();
statement = con.createStatement();
resultSet = statement.executeQuery("select  usertype,username,password from users");
while(resultSet.next())
{
	roleDB = resultSet.getString("usertype");
userNameDB = resultSet.getString("username");
passwordDB = resultSet.getString("password");

if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("ProjectManager"))
return "ProjectManager_Role";
else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("TeamLeader"))
return "TeamLeader_Role";
else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Customer"))
return "Customer_Role";
}
}
catch(SQLException e)
{
e.printStackTrace();
}
return "Invalid user credentials";
}
}
