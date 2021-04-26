package pms.javaee.dbconn;


import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconn {
	
	public static Connection createConnection()
	{
	
	Connection con = null;
	String url = "jdbc:mysql://localhost:3306/projects";
	String username = "root";
	String password = "Nyaboke";
	
	try
	{
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	}
	catch (ClassNotFoundException e)
	{
	e.printStackTrace();
	}
	con = DriverManager.getConnection(url, username, password);
	System.out.println("Post establishing database connection - "+con);
	}
	catch (Exception e)
	{
	e.printStackTrace();
	}
	return con;
	}
}



