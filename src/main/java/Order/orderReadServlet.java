package Order;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/orderReadServlet")
public class orderReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String OrderID = request.getParameter("Oid");
		
		try {
		List<order> orderdet = orderDbUtil.getcustomerDetails(OrderID); 
		request.setAttribute("orderdet", orderdet);
		
		
		
		
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Error");
		}
		RequestDispatcher dis = request.getRequestDispatcher("DisplayOrderDetails.jsp");
		dis.forward(request,response);
		
		
		
		
		 
		
		
	}

}
