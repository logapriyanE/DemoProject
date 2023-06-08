package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddtoCart
 */
@WebServlet("/AddtoCart")
public class AddtoCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 response.setContentType("text/html");
	 PrintWriter out =response.getWriter();
	 try {
		 ArrayList<Cart> cartList=new ArrayList<>();
		 String name=request.getParameter("name");
		 Cart cm=new Cart();
		 cm.setBookname(name);
		 cm.setQuantity(1);
		
		 HttpSession session=request.getSession();
		 ArrayList<Cart> cart_list=(ArrayList<Cart>) session.getAttribute("caet_list"); 
		 
		 if(cart_list == null) {
			 cartList.add(cm);
			 session.setAttribute("cart_list",cartList );
			 response.sendRedirect("Cart.jsp");
			 
		 }
		 else {
			 cartList=cart_list;
			 boolean exist=false;
			 for(Cart c:cart_list) {
				 if(c.getBookname()==name) {
				 exist=true;
				 out.println("product already exist");
				 }
			 }
			 if(!exist) {
				 cartList.add(cm);
				 response.sendRedirect("Cart.jsp");
			 }
		 }
	} catch (Exception e) {
		System.out.println(e.getMessage());
	}
	}

	

}
