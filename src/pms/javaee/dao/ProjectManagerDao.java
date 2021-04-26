package pms.javaee.dao;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;


import pms.javaee.model.ProjectManagers;

public class ProjectManagerDao {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(ProjectManagers u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into projectmanagers(firstname,lastname,phone,locId, userId) values(?,?,?,?,?)");  
	        ps.setString(1,u.getFirstname());
	        ps.setString(2,u.getLastname());
	        ps.setString(3,u.getPhone());
	        ps.setInt(4,u.getLocId());
	        ps.setInt(5,u.getUserId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	    	
	}  
	public static int update(ProjectManagers u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update projectmanagers set firstname=?,lastname=?,phone=?,LocId=?,userId=? where pmId=?");  
	        ps.setString(1,u.getFirstname());
	        ps.setString(2,u.getLastname());
	        ps.setString(3,u.getPhone());
	        ps.setInt(4,u.getLocId());
	        ps.setInt(5,u.getUserId());
	        ps.setInt(6,u.getPmId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(ProjectManagers u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from projectmanagers where pmId=?");  
	        ps.setInt(1,u.getPmId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<ProjectManagers> getAllRecords(){  
	    List<ProjectManagers> list=new ArrayList<ProjectManagers>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from projectmanagers");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	ProjectManagers u=new ProjectManagers();  
	            u.setPmId(rs.getInt("pmId"));  
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
	public static ProjectManagers getRecordById(int pmId){  
		ProjectManagers u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from projectmanagers where pmId=?");  
	        ps.setInt(1,pmId);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new ProjectManagers();  
	            u.setPmId(rs.getInt("pmId"));  
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
