package Order;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;  // Use jakarta.servlet.RequestDispatcher

@WebServlet("/orderUpdateServlet")
public class orderUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String orderID = request.getParameter("oid");
        String customerName = request.getParameter("name");
        String companyName = request.getParameter("cname");
        String country = request.getParameter("country");
        String address = request.getParameter("address");
        String zipCode = request.getParameter("zip");
        String productDetails = request.getParameter("productDetails");
        String quantity = request.getParameter("qty");
        
        boolean isTrue;
        
        // Assuming orderDbUtil.updateOrder() is correctly implemented
        isTrue = orderDbUtil.updateOrder(orderID, customerName, companyName, country, address, zipCode, productDetails, quantity);
        
        if (isTrue) {
            RequestDispatcher dis = request.getRequestDispatcher("success.jsp");  // Correct usage
            dis.forward(request, response);
        } else {
            RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");  // Correct usage
            dis.forward(request, response);
        }
    }
}
