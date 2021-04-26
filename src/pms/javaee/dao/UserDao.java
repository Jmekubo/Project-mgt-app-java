package pms.javaee.dao;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;

import pms.javaee.model.User;  

public class UserDao {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into users(usertype,username,email,password) values(?,?,?,?)");  
	        ps.setString(1,u.getUsertype());  
	        ps.setString(2,u.getUsername());  
	        ps.setString(3,u.getEmail());  
	        ps.setString(4,u.getPassword());  
	         
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	    	
	}  
	public static int update(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update users set usertype=?,username=?,email=?,password=? where userId=?");  
	        ps.setString(1,u.getUsertype());  
	        ps.setString(2,u.getUsername());  
	        ps.setString(3,u.getEmail());  
	        ps.setString(4,u.getPassword());   
	        ps.setInt(5,u.getUserId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from users where userId=?");  
	        ps.setInt(1,u.getUserId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<User> getAllRecords(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from users");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setUserId(rs.getInt("userId"));  
	            u.setUsertype(rs.getString("usertype"));  
	            u.setUsername(rs.getString("username"));  
	            u.setEmail(rs.getString("email"));  
	            u.setPassword(rs.getString("password"));  
	              
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static User getRecordById(int userId){  
	    User u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from users where userId=?");  
	        ps.setInt(1,userId);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setUserId(rs.getInt("userId"));  
	            u.setUsertype(rs.getString("usertype"));  
	            u.setUsername(rs.getString("username"));  
	            u.setEmail(rs.getString("email"));  
	            u.setPassword(rs.getString("password"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}

}
