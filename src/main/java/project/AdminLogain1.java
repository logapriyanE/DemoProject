package project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminLogain1")
public class AdminLogain1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String pass=request.getParameter("password");
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adminlogin","root","loga1234");
		PreparedStatement pr=con.prepareStatement("select * from adminl where adminuser='"+name+"' and password='"+pass+"'");
		ResultSet rs=pr.executeQuery();
		if(rs.next()) {
			response.sendRedirect("Admin.jsp");
		}
		else {
			response.sendRedirect("AdminLogin.jsp");
		}
		}
		catch(ClassNotFoundException e) {
			System.out.println(e);
		}
		catch(SQLException e) {System.out.println(e);}
	}

}
