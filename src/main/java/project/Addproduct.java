package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Addproduct")
public class Addproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bname=request.getParameter("bname");
		String cname=request.getParameter("cname");
		String url=request.getParameter("url");
		String pname=request.getParameter("pname");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/productdetiles","root","loga1234");
		PreparedStatement pr=con.prepareStatement("insert into product(bookname,categry,image,price) values('"+bname+"','"+cname+"','"+url+"','"+pname+"')");
		int rs=pr.executeUpdate();
		if(rs==1) {
			RequestDispatcher re=request.getRequestDispatcher("Admin.jsp");
			re.include(request, response);
			//out.println("<script></script>");
		}
		else {
			out.println("<h3>SomeThing worng<a href="+"Admin.jsp"+">boack All products</a></h3>");
		}
		}
		catch(ClassNotFoundException e) {
			System.out.println(e);
		}
		catch(SQLException e) {System.out.println(e);}
	}

}
