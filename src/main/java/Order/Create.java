package Order;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




@WebServlet("/Create")
public class Create extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String CustomerName =request.getParameter ("Uname");
		String CompanyName =request.getParameter ("Cname");
		String Country =request.getParameter ("Country");
		String address =request.getParameter ("address");
		String ZipCode =request.getParameter ("Zip");
		String ProductDetails =request.getParameter ("ProductDetails");
		String Quantity =request.getParameter ("Quantity");
		
		boolean isTrue;
		
		isTrue=orderDbUtil.CreateOrder(CustomerName, CompanyName, Country, address, ZipCode, ProductDetails, Quantity);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
