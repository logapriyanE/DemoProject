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


@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		PrintWriter out=response.getWriter();
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/productdetiles","root","loga1234");
		PreparedStatement pr=con.prepareStatement("delete from product where bookname='"+name+"'");
		int rs=pr.executeUpdate();
		if(rs == 1) {
			response.sendRedirect("Admin.jsp");
		}
		else {
			//response.sendRedirect("NewFlie.jsp");
		    out.println("Sorry somthing worng");
		} 
		}
		catch(ClassNotFoundException e) {
			System.out.println(e);
		}
		catch(SQLException e) {System.out.println(e);}
}

	}





