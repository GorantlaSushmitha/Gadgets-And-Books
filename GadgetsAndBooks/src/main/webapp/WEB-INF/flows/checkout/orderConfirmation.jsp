<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/Pages/header.jsp" %>
<style>
 body {
        background-color: #444;
        background: url(http://www.designbolts.com/wp-content/uploads/2013/02/Rough-Grey-Tilable-Pattern-For-Website-Background.jpg);
        
    }
}
</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   <div class="container-wrapper">
<div class="container">
<div class="page-header" align="center">
<h1>Order</h1>

<p class="lead">Order confirmation</p>
</div>

<div class="container">

<div class="row">

<form:form commandName="order" class="form-horizontal">

<div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

<div class="txt-center">
<h1><center>Receipt</center></h1>
</div>
<div class="row">
<div class="col-xs-6 col-sm-6 col-md-6">
<address>
<strong>Shipping Address</strong><br/>
${order.cart.customer.shippingAddress.streetName}
<br/>
<%-- ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state} --%>
<br/>
${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipcode}
</address>
</div>


<div class="col-xs-6 col-sm-6 col-md-6 text-right">
<p>Shipping Date: <fmt:formatDate type = "date" 
         value = "${now}" /></p>
<!-- <script>
var d = new Date();
document.getElementById("demo").innerHTML = d;
</script> -->
</div>
</div>

<div class="row">
<div class="col-xs-6 col-sm-6 col-md-6">
<address>
<strong>Billing Address</strong><br/>
${order.cart.customer.billingAddress.streetName}
<br/>
<%-- ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state} --%>
<br/>
${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipcode}
</address>
</div>
</div>

<div class="row">
<table class="table table-hover">
<thead>
<tr>
<td>Product</td>
<td>#</td>
<td class="text-center">Price</td>
<td class="text-center">Total</td>
</tr>
</thead>
<tbody>
<c:set var="grandTotal" value="0.0"></c:set>
<c:forEach var="cartItem" items="${order.cart.cartItems}">
<tr>
<td class="col-md-9"><em>${cartItem.product.name}</em></td>
<td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
<td class="col-md-1" style="text-align: center">${cartItem.product.price}</td>
<td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
<c:set var="grandTotal" value="${grandTotal + cartItem.totalPrice }"></c:set>
</tr>
</c:forEach>

<tr>
<td></td>
<td></td>
<td class="text-right">
<h4><strong>Grand Total:</strong></h4>
</td>
<td class="text-center text-danger">
<h4><strong>INR ${grandTotal}</strong></h4>
</td>
</tr>

</tbody>
</table>
</div>


<input type="hidden" name="_flowExecutionKey" />

<br/><br/>
<center>
<button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Back</button>

<input type="submit" value="Submit Order" class="btn btn-default" name="_eventId_orderConfirmed" />

<button class="btn btn-default" name="_eventId_cancel">Cancel</button>
</center>
</div>
</form:form>
</div>
</div>
</div>
</div>
</body>
</html>
<%@ include file="/WEB-INF/Pages/footer.jsp" %>