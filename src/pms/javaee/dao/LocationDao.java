package pms.javaee.dao;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;

import pms.javaee.model.Location;


public class LocationDao {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Location u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into location(region,city) values(?,?)");  
	        ps.setString(1,u.getRegion());  
	        ps.setString(2,u.getCity());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  

	}  
	public static int update(Location u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update location set region=?,city=? where locId=?");  
	        ps.setString(1,u.getRegion());  
	        ps.setString(2,u.getCity());     
	        ps.setInt(3,u.getLocId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	} 
	public static int delete(Location u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from location where locId=?");  
	        ps.setInt(1,u.getLocId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Location> getAllRecords(){  
	    List<Location> list=new ArrayList<Location>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from location");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Location u=new Location();  
	            u.setLocId(rs.getInt("locId"));  
	            u.setRegion(rs.getString("region"));  
	            u.setCity(rs.getString("city"));          
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Location getRecordById(int LocId){  
		Location u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from location where locId=?");  
	        ps.setInt(1,LocId);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Location();  
	            u.setLocId(rs.getInt("locId"));  
	            u.setRegion(rs.getString("region"));  
	            u.setCity(rs.getString("city"));
  
	              
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}
	

}
