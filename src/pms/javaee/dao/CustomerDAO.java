package pms.javaee.dao;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;

import pms.javaee.model.Customer;
 

public class CustomerDAO {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","Nyaboke");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Customer u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into customers(customername,address,email,phone,userId) values(?,?,?,?,?)");  
	        ps.setString(1,u.getCustomername());  
	        ps.setString(2,u.getAddress());
	        ps.setString(3,u.getEmail());
	        ps.setString(4,u.getPhone());  
	        ps.setInt(5,u.getUserId()); 
	         
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  

	}  
	public static int update(Customer u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update customers set customername=?,address=?,email=?,phone=?, userId=? where custId=?");  
	        ps.setString(1,u.getCustomername());  
	        ps.setString(2,u.getAddress()); 
	        ps.setString(3,u.getEmail());  
	        ps.setString(4,u.getPhone());
	        ps.setInt(5,u.getUserId()); 
	        ps.setInt(6,u.getCustId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Customer u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from customers where custId=?");  
	        ps.setInt(1,u.getCustId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Customer> getAllRecords(){  
	    List<Customer> list=new ArrayList<Customer>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from customers");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Customer u=new Customer();  
	            u.setCustId(rs.getInt("custId"));  
	            u.setCustomername(rs.getString("customername"));  
	            u.setAddress(rs.getString("address"));
	            u.setEmail(rs.getString("email"));
	            u.setPhone(rs.getString("phone"));  
	            u.setUserId(rs.getInt("userId"));   
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Customer getRecordById(int custId){  
		Customer u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from customers where custId=?");  
	        ps.setInt(1,custId);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Customer();  
	            u.setCustId(rs.getInt("custId"));  
	            u.setCustomername(rs.getString("customername"));  
	            u.setAddress(rs.getString("address"));
	            u.setEmail(rs.getString("email"));
	            u.setPhone(rs.getString("phone"));   
	            u.setUserId(rs.getInt("userId"));   
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}

}
