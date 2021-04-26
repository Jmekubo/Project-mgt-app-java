package pms.javaee.dao;

import java.sql.*;

import java.util.ArrayList;  
import java.util.List;


import pms.javaee.model.Task;

public class TaskDao {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Task u){  
	    int status=0;
	 
	    
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into tasks(taskdetails,startdate,enddate,status,projId, temId,devId) values(?,?,?,?,?,?,?)"); 
	        
	        ps.setString(1,u.getTaskdetails());
	        ps.setString(2,u.getStartdate());
	        ps.setString(3,u.getEnddate());
	        ps.setString(4,u.getStatus());
	        ps.setInt(5,u.getProjId());
	        ps.setInt(6,u.getTemId());
	        ps.setInt(7,u.getDevId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	    
	    
	    	
	}
	
	public static int update(Task u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update tasks set taskdetails=?,startdate=?,enddate=?,status=?,projId=?,temId=?,devId=? where taskId=?");  
	        ps.setString(1,u.getTaskdetails());
	        ps.setString(2,u.getStartdate());
	        ps.setString(3,u.getEnddate());
	        ps.setString(4,u.getStatus());
	        ps.setInt(5,u.getProjId());
	        ps.setInt(6,u.getTemId());
	        ps.setInt(7,u.getDevId());
	        ps.setInt(8,u.getTaskId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Task u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from tasks where taskId=?");  
	        ps.setInt(1,u.getTaskId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Task> getAllRecords(){  
	    List<Task> list=new ArrayList<Task>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from tasks");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Task u=new Task();  
	            u.setTaskId(rs.getInt("taskId"));  
	            u.setTaskdetails(rs.getString("taskdetails"));
	            u.setStartdate(rs.getString("startdate")); 
	            u.setEnddate(rs.getString("enddate"));
	            u.setStatus(rs.getString("status"));
	            u.setProjId(rs.getInt("projId"));
	            u.setTemId(rs.getInt("temId")); 
	            u.setDevId(rs.getInt("devId")); 
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Task getRecordById(int taskId){  
		Task u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from tasks where taskId=?");  
	        ps.setInt(1,taskId);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Task();  
	            u.setTaskId(rs.getInt("taskId"));  
	            u.setTaskdetails(rs.getString("taskdetails"));
	            u.setStartdate(rs.getString("startdate")); 
	            u.setEnddate(rs.getString("enddate"));
	            u.setStatus(rs.getString("status"));
	            u.setProjId(rs.getInt("projId"));
	            u.setTemId(rs.getInt("temId")); 
	            u.setDevId(rs.getInt("devId")); 
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}
	
	

	
	

}
