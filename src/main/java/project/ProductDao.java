package project;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
     private Connection con;
     private String query;
     private PreparedStatement pst;
     private ResultSet rs;
     
     public ProductDao(Connection con) {
    	 this.con=con;
     }
     public List<Product> getAllProduct(){
    	 List<Product> product11=new ArrayList<Product>();
    	 try {
    		 Class.forName("com.mysql.jdbc.Driver");
   
    		 query="select * from product";
    		 pst=this.con.prepareStatement(query);
    		 rs=pst.executeQuery();
    		 while(rs.next()) {
    			 Product row=new Product();
    			 row.setBookname(rs.getString(1));
    			 row.setCategry(rs.getString(2));
    			 row.setImage(rs.getString(3));
    			 row.setPrice(rs.getString(4));
    			 row.setId(rs.getString(5));
    			 
    			 product11.add(row);
    		 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	 
    	 return product11;
     }
    public List<Orderbeen> getOrder(){
    	List<Orderbeen> order=new ArrayList<Orderbeen>();
    	try {
   		 Class.forName("com.mysql.jdbc.Driver");
  
   		 query="select * from product";
   		 pst=this.con.prepareStatement(query);
   		 rs=pst.executeQuery();
   		 while(rs.next()) {
   			Orderbeen row=new Orderbeen();
   			 row.setId(rs.getString(1));
   			 row.setStatus(rs.getString(2));
   			 row.setDeliver(rs.getString(3));
   			
   			 
   			 order.add(row);
   		 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
   	 
   	 return order;
    	
    }
}
