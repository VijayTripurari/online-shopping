<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>



<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Web Flow Demo</title>


<link rel="stylesheet" href="${css}/bootstrap.min.css">
<link rel="stylesheet" href="${css}/styles.css">

<link rel="stylesheet" href="${css}/dataTables.bootstrap.css">


<script src="${js}/jquery.js"></script>
<script src="${js}/jquery.dataTables.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="${js}/dataTables.bootstrap.js"></script>


<script src="${js}/myapp.js"></script>


</head>
<body>
<%@include file="./shared/navbar.jsp"%>
	<div class="container">
	
	<div class="col-sm-3"></div>
   <div class="col-sm-7">
			<h2>
				&nbsp;<font color="#8B4513"><b>Your Order Item Details :
				</b></font>
			</h2>
			<br />
			<hr>
			<table class="table">
				<thead class="thead-default">



					<tr style = " background-color : #add2f0;" >

						<th>Cart Item Id</th>
						<th>Product</th>
						<th>Quantity</th>
						<th>Product Total</th>
						<th></th>
					</tr>
				</thead>
				<tbody>




					<c:set var="grandtotal" value="${0}" />
					<c:set var="i" value="2" />
                    
					<c:forEach var="cartItem" items="${cart.cartItems}">
					  <c:if test="${i%2 == 0}">
						<tr>
							<th>${cartItem.id}</th>
							<th>${cartItem.product.name}</th>
							<th>${cartItem.quantity}</th>
							<th>${cartItem.totalPrice}</th>
						</tr>
						
						<c:set var="grandtotal"
							value="${grandtotal + cartItem.totalPrice} " />
					 </c:if>	
					 <c:set var="i" value="${i+1}"/>	
					</c:forEach>
					<tr>
						<th></th>
						<th></th>
						<th><b><h3>Grand Total :</h3></th>
						<th><h3>${grandtotal}</b>
							</h3></th>
					</tr>
					<tr>
						<th><c:set var="GrandTotal" value="${grandtotal}"/></th>
						<th></th>
						<th>
								<h3><a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-primary btn-lg">Next</a></h3></th>
						<th><h3></h3></th>
					</tr>


				</tbody>
			</table>
			</div>
			<div class="col-sm-2"></div>
	<%@include file="./shared/footer.jsp"%>		
	</div>
</body>
</html>