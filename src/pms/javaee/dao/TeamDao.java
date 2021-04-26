package pms.javaee.dao;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;

import pms.javaee.model.Team;


public class TeamDao {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Team u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into team(category,locId) values(?,?)");  
	        ps.setString(1,u.getCategory());
	        ps.setInt(2,u.getLocId());
 
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	    	
	}  
	public static int update(Team u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update team set category=?,LocId=? where teamId=?");  
	        ps.setString(1,u.getCategory());  
	        ps.setInt(2,u.getLocId());
	        ps.setInt(3,u.getTeamId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Team u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from team where teamId=?");  
	        ps.setInt(1,u.getTeamId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Team> getAllRecords(){  
	    List<Team> list=new ArrayList<Team>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from team");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Team u=new Team();  
	            u.setTeamId(rs.getInt("teamId"));  
	            u.setCategory(rs.getString("category")); 
	            u.setLocId(rs.getInt("locId")); 
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Team getRecordById(int teamId){  
		Team u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from team where teamId=?");  
	        ps.setInt(1,teamId);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Team();  
	            u.setTeamId(rs.getInt("teamId"));  
	            u.setCategory(rs.getString("category"));  
	            u.setLocId(rs.getInt("locId")); 
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}


}
