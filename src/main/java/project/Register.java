package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Register")
public class Register extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,NumberFormatException {
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		Long pno=Long.valueOf(request.getParameter("pno"));
		String email=request.getParameter("email");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop","root","loga1234");
		PreparedStatement pr=con.prepareStatement("insert into customer(FirstName,LastName,PhoneNumber,Email,UserName,Password) values('"+fname+"','"+lname+"',"+pno+",'"+email+"','"+uname+"','"+pass+"')");
		int rs=pr.executeUpdate();
		if(rs==1) {
			RequestDispatcher re=request.getRequestDispatcher("Register.jsp");
			re.include(request, response);
			out.println("<script></script>");
		}
		else {
			response.sendRedirect("Register.jsp");
		}
		}
		catch(ClassNotFoundException e) {
			System.out.println(e);
		}
		catch(SQLException e) {System.out.println(e);}
	}

}
