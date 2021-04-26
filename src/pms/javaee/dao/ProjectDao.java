package pms.javaee.dao;

import java.sql.*;

import java.util.ArrayList;  
import java.util.List;


import pms.javaee.model.Projects;

public class ProjectDao {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Projects u){  
	    int status=0;
	 
	    
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into projects(projectdetails,startdate,enddate,temId, pmId,custId) values(?,?,?,?,?,?)"); 
	        

	        ps.setString(1,u.getProjectdetails());
	        ps.setString(2,u.getStartdate());
	        ps.setString(3,u.getEnddate());
	        ps.setInt(4,u.getTemId());
	        ps.setInt(5,u.getPmId());
	        ps.setInt(6,u.getCustId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	    
	    
	    	
	}
	

	
	public static int update(Projects u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update projects set projectdetails=?,startdate=?,enddate=?,temId=?,pmId=?,custId=? where projId=?");  
	        ps.setString(1,u.getProjectdetails());
	        ps.setString(2,u.getStartdate());
	        ps.setString(3,u.getEnddate());
	        ps.setInt(4,u.getTemId());
	        ps.setInt(5,u.getPmId());
	        ps.setInt(6,u.getCustId());
	        ps.setInt(7,u.getProjId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Projects u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from projects where projId=?");  
	        ps.setInt(1,u.getProjId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Projects> getAllRecords(){  
	    List<Projects> list=new ArrayList<Projects>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from projects");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Projects u=new Projects();  
	            u.setProjId(rs.getInt("projId"));  
	            u.setProjectdetails(rs.getString("projectdetails"));
	            u.setStartdate(rs.getString("startdate")); 
	            u.setEnddate(rs.getString("enddate")); 
	            u.setTemId(rs.getInt("temId"));
	            u.setPmId(rs.getInt("pmId")); 
	            u.setCustId(rs.getInt("custId")); 
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Projects getRecordById(int projId){  
		Projects u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from projects where projId=?");  
	        ps.setInt(1,projId);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Projects();  
	            u.setProjId(rs.getInt("projId"));  
	            u.setProjectdetails(rs.getString("projectdetails"));
	            u.setStartdate(rs.getString("startdate")); 
	            u.setEnddate(rs.getString("enddate")); 
	            u.setTemId(rs.getInt("temId"));
	            u.setPmId(rs.getInt("pmId")); 
	            u.setCustId(rs.getInt("custId"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}


}
