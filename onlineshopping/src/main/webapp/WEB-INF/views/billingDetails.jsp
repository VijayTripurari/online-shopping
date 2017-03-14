<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="net.vijay.shoppingbackend.dto.*" %>	
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="javax.servlet.http.*" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


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
		<sf:form modelAttribute="cart">	
		<h2>
		&nbsp;<font color="#8B4513"><b>Your Address Details : </b></font>
	</h2>
	 <br/>
    <hr>
	
         
    <c:forEach  var="address"   items="${cart.user.addressList}">
    <table class="table">
    <tr  style = " background-color : #add2f0;  "><h2>
      <th colspan="2"> # Address : </th> </h2>
      
    </tr>
    <tr><h2>
      <th>Houser No : </th> </h2>
      <th>${address.houseNo}</th>
    </tr>
    <tr><h2>
      <th>Steet  : </th></h2>
      <th>${address.street}</th>
    </tr>
      <tr><h2>
      <th>City : </th></h2>
      <th>${address.city}</th>
    </tr>
      <tr><h2>
      <th>State : </th></h2>
      <th>${address.state}</th>
    </tr>
      <tr><h2>
      <th>Country : </th></h2>
      <th>${address.country}</th>
    </tr>
      <tr><h2>
      <th>Pin : </th></h2>
      <th>${address.pin}</th>
    </tr>
     
  
</table>
 </c:forEach>
    <h3>
							<input name="_eventId_edit" type="submit"
								value="BACK"
								class="btn btn-lg btn-primary" />
								<input name="_eventId_submit" type="submit"
								value="Bank Payment"
								class="btn btn-lg btn-warning" />
						
						</h3>
					</div>

</div>
	</sf:form>
	</div>
	<div class="col-sm-2"></div>
	<%@include file="./shared/footer.jsp"%>
	
	</body>
</html>