package pms.javaee.dao;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;


import pms.javaee.model.TeamLeader;

public class TeamLeaderDao {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(TeamLeader u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into teamleaders(firstname,lastname,phone,locId, userId) values(?,?,?,?,?)");  
	        ps.setString(1,u.getFirstname());
	        ps.setString(2,u.getLastname());
	        ps.setString(3,u.getPhone());
	        ps.setInt(4,u.getLocId());
	        ps.setInt(5,u.getUserId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	    	
	}  
	public static int update(TeamLeader u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update teamleaders set firstname=?,lastname=?,phone=?,LocId=?,userId=? where temId=?");  
	        ps.setString(1,u.getFirstname());
	        ps.setString(2,u.getLastname());
	        ps.setString(3,u.getPhone());
	        ps.setInt(4,u.getLocId());
	        ps.setInt(5,u.getUserId());
	        ps.setInt(6,u.getTemId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(TeamLeader u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from teamleaders where temId=?");  
	        ps.setInt(1,u.getTemId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<TeamLeader> getAllRecords(){  
	    List<TeamLeader> list=new ArrayList<TeamLeader>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from teamleaders");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	TeamLeader u=new TeamLeader();  
	            u.setTemId(rs.getInt("temId"));  
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
	public static TeamLeader getRecordById(int temId){  
		TeamLeader u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from teamleaders where temId=?");  
	        ps.setInt(1,temId);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new TeamLeader();  
	            u.setTemId(rs.getInt("temId"));  
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
