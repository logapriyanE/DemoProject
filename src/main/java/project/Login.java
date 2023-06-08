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
import javax.servlet.http.HttpSession;


@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String pass=request.getParameter("password");
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop","root","loga1234");
		PreparedStatement pr=con.prepareStatement("select * from customer where UserName='"+name+"' and Password='"+pass+"'");
		ResultSet rs=pr.executeQuery();
		if(rs.next()) {
			HttpSession session=request.getSession();
			session.setAttribute("n", name);
			session.setAttribute("p", pass);
			response.sendRedirect("Home.jsp");
		}
		else {
			response.sendRedirect("NewFlie.jsp");
		}
		}
		catch(ClassNotFoundException e) {
			System.out.println(e);
		}
		catch(SQLException e) {System.out.println(e);}
	}
	}


