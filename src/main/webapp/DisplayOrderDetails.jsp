<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>






<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
<c:forEach var="ord" items="${orderdet}">

<c:set var="orderID" value="${ord.orderID}"/>
<c:set var="customerName" value="${ord.customerName}"/>
<c:set var="companyName" value="${ord.companyName}"/>
<c:set var="country" value="${ord.country}"/>
<c:set var="address" value="${ord.address}"/>
<c:set var="zipCode" value="${ord.zipCode}"/>
<c:set var="productDetails" value="${ord.productDetails}"/>
<c:set var="quantity" value="${ord.quantity}"/>


<tr>
<td>Order ID</td>
<td>${ord.orderID}</td> 
</tr>

<tr>
<td>Customer name</td>
<td> ${ord.customerName}</td>
</tr>

<tr>
<td>Company Name</td>
<td> ${ord.companyName}</td>
</tr>

<tr>
<td>Country</td>
<td> ${ord.country}</td>
</tr>

<tr>
<td>Address</td>
<td> ${ord.address}</td>
</tr>

<tr>
<td>Zip Code</td>
<td>${ord.zipCode}</td>
</tr>

<tr>
<td>Product Details</td>
<td> ${ord.productDetails}</td>
</tr>

<tr>
<td>Quantity</td>
<td> ${ord.quantity}</td>
</tr>
 

</c:forEach>
</table>

<c:url value="updatecustomer.jsp" var="cusupdate">

   <c:param name="orderID" value="${orderID}"/>
   <c:param name="customerName" value="${customerName}"/>
   <c:param name="companyName" value="${companyName}"/>
   <c:param name="country" value="${country}"/>
   <c:param name="address" value="${address}"/>
   <c:param name="zipCode" value="${zipCode}"/>
   <c:param name="productDetails" value="${productDetails}"/>
   <c:param name="quantity" value="${quantity}"/>
   

</c:url>

<a href="${cusupdate}">
<input type="button" name="update" value="Update My Data">
</a>

</body>
</html>