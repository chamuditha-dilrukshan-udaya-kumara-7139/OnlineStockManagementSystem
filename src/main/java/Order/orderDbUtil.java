
package Order;

import java.sql.Connection; 

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;


public class orderDbUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	public static boolean CreateOrder(String CustomerName,String CompanyName,String Country,String address,int ZipCode,String ProductDetails,int Quantity) {
		 
		boolean isSuccess = false;
		
		
		
		//Create DB Connection

		
		
		try {
			
            con = DBConnect.getConnection();
            stmt=con.createStatement();
			String sql ="insert into orderinsert(CustomerName, CompanyName, Country, Address, ZipCode, ProductDetails, Quantity) values('"+CustomerName+"','"+CompanyName+"','"+Country+"','"+address+"','"+ZipCode+"','"+ProductDetails+"','"+Quantity+"')";
			int rs = stmt.executeUpdate(sql);
			
			 if(rs > 0) {
				 isSuccess = true;
			 }else {
				 isSuccess = false;
			 }
			
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
		
		return isSuccess;
		
		
		
	}
	
	public static List<order> getcustomerDetails(String Id){
		
		
		ArrayList<order> ord = new ArrayList<>();
		
		
		try {
			
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="select * from orderinsert where OrderID ='"+Id+"'";
			rs= stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				String id = rs.getString(1);
				String CusName = rs.getString(2);
				String ComName = rs.getString(3);
				String Count = rs.getString(4);
				String address = rs.getString(5);
				int Zip = rs.getInt(6);
				String Product = rs.getString(7);
				int Quant = rs.getInt(8);
				
				order o = new order(id,CusName,ComName,Count,address,Zip,Product,Quant);
				
				ord.add(o);
			}
			
			
			
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
		
		return ord;
		
		
	}
	
	
	public static boolean updateOrder(String orderID,String customerName,String companyName,String country,String address,int zipCode,String productDetails,int quantity) {
		
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
            stmt=con.createStatement();
            String sql ="update orderinsert set CustomerName='"+customerName+"',CompanyName='"+companyName+"',Country='"+country+"',Address='"+address+"',ZipCode='"+zipCode+"',ProductDetails='"+productDetails+"',Quantity='"+quantity+"'"+"' where OrderID='"+orderID+"'";
            int rs = stmt.executeUpdate(sql);
            
            if(rs > 0) {
				 isSuccess = true;
			 }else {
				 isSuccess = false;
			 }
            
            
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
		
		return isSuccess;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}

