<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

     String orderID = request.getParameter("orderID");
     String customerName = request.getParameter("customerName");
     String companyName = request.getParameter("companyName");
     String country = request.getParameter("country");
     String address = request.getParameter("address");
     int zipCode = request.getParameter("zipCode");
     String productDetails = request.getParameter("productdetails");
     int quantity = request.getParameter("quantity");

%>




            <form class="order-form" action="update" method="post">
                <h2>Update Order</h2>
                
                <div class="form-group">
                    <label for="customer-name-update">Order ID :</label>
                    <input type="text" id="customer-name-update" required class="form-control" name="oid" value="<%= orderID %>" readonly>
                </div>
                
                <div class="form-group">
                    <label for="customer-name-update">Customer Name:</label>
                    <input type="text" id="customer-name-update" required class="form-control" name="name" value="<%= customerName %>">
                </div>

                <div class="form-group">
                    <label for="company-name-update">Company Name:</label>
                    <input type="text" id="company-name-update" class="form-control" name="cname" value="<%= companyName %>">
                </div>

                <div class="form-group">
                    <label for="country-update">Country:</label>
                    <input type="text" id="country-update" class="form-control" name="country" value="<%= country %>">
                </div>

                <div class="form-group">
                    <label for="address-update">Address:</label>
                    <input type="text" id="address-update" class="form-control" name="address"  value="<%= address %>">
                </div>

                <div class="form-group">
                    <label for="zip-code-update">Zip Code:</label>
                    <input type="text" id="zip-code-update" class="form-control" name="zip"  value="<%= zipCode %>">
                </div>

                <div class="form-group">
                    <label for="product-details-update">Product Details:</label>
                    <input type="text" id="product-details-update" required class="form-control" name="productDetails"  value="<%= productDetails %>">
                </div>

                <div class="form-group">
                    <label for="qty-update">Quantity:</label>
                    <input type="number" id="qty-update" required class="form-control" name="qty"  value="<%= quantity %>">
                </div>

                <button type="submit" class="btn btn-custom">Update Order</button>
            </form>


</body>
</html>