package pms.javaee.dao;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;

import pms.javaee.model.Developer;


public class DeveloperDao {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Developer u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into developers(firstname,lastname,phone,locId, userId) values(?,?,?,?,?)");  
	        ps.setString(1,u.getFirstname());
	        ps.setString(2,u.getLastname());
	        ps.setString(3,u.getPhone());
	        ps.setInt(4,u.getLocId());
	        ps.setInt(5,u.getUserId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	    	
	}  
	public static int update(Developer u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update developers set firstname=?,lastname=?,phone=?,locId=?,userId=? where devId=?");  
	        ps.setString(1,u.getFirstname());
	        ps.setString(2,u.getLastname());
	        ps.setString(3,u.getPhone());
	        ps.setInt(4,u.getLocId());
	        ps.setInt(5,u.getUserId());
	        ps.setInt(6,u.getDevId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Developer u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from developers where devId=?");  
	        ps.setInt(1,u.getDevId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Developer> getAllRecords(){  
	    List<Developer> list=new ArrayList<Developer>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from developers");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Developer u=new Developer();  
	            u.setDevId(rs.getInt("devId"));  
	            u.setFirstname(rs.getString("firstname"));
	            u.setLastname(rs.getString("lastname")); 
	            u.setPhone(rs.getString("phone")); 
	            u.setLocId(rs.getInt("locId"));
	            u.setUserId(rs.getInt("userId")); 
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Developer getRecordById(int devId){  
		Developer u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from Developers where devId=?");  
	        ps.setInt(1,devId);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Developer();  
	            u.setDevId(rs.getInt("devId"));  
	            u.setFirstname(rs.getString("firstname"));
	            u.setLastname(rs.getString("lastname")); 
	            u.setPhone(rs.getString("phone")); 
	            u.setLocId(rs.getInt("locId"));
	            u.setUserId(rs.getInt("userId"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}



}
