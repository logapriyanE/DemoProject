package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("sname");
		PrintWriter out=response.getWriter();
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/productdetiles","root","loga1234");
		PreparedStatement pr=con.prepareStatement("select * from product");
		ResultSet rs=pr.executeQuery();
		List<Product1> product1=new ArrayList<Product1>();
		    int f=0;
			 while(rs.next()) {
				if(name.equals(rs.getString(1))) {
    			 Product1 row=new Product1();
    			 row.setBookname(rs.getString(1));
    			 row.setCategry(rs.getString(2));
    			 row.setImage(rs.getString(3));
    			 row.setPrice(rs.getString(4));
    			 
    			 product1.add(row);
    			 
    			 //RequestDispatcher rd = request.getRequestDispatcher("Search.jsp");
					//rd.include(request, response);
					//out.println(product1);
    			 HttpSession session = request.getSession();
    			 session.setAttribute("sh",product1);
    			 response.sendRedirect("Search.jsp");
    			 		f=1;		
    			 }
			 }
				if(f==0) {
					
					RequestDispatcher rd = request.getRequestDispatcher("Search.jsp");
					rd.include(request, response);
					out.println("sorry");
				}
			
		
		
			
		
		}
		catch(ClassNotFoundException e) {
			System.out.println(e);
		}
		catch(SQLException e) {System.out.println(e);}
	
	}
}


	

