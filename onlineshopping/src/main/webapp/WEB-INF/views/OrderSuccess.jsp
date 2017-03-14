<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


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
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">


<script src="${js}/jquery.js"></script>
<script src="${js}/jquery.dataTables.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="${js}/dataTables.bootstrap.js"></script>


<script src="${js}/myapp.js"></script>


</head>
<body>
	
	<%@include file="./shared/navbar.jsp"%>
	
		<div class="container">
		
		
	
		
		<div class="col-lg-3"></div>
		<div class="col-lg-7">
		
			<sf:form modelAttribute="user">
			<b>
				
						<h1><font color="green">Success</font></h1>
						<hr/>
				
		<h3>	Thank You<b> ${cart.user.userName} ,</b><br/><br/> We have received Your Order.&nbsp;<b> <i class="fa fa-inr"></i> ${cart.grandTotal} </b> </h3> 
		<!-- 	<h3><a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-primary btn-lg">OK</a></h3></th> -->
		<security:authorize access="isAuthenticated()"><br />
				<h3><center><a 	href="${contextRoot}/perform_logout" class="btn btn-warning btn-lg">OK</a></center></h3>
			</security:authorize>
						
			</sf:form>
		</div>
	<div class="col-sm-2"></div>
	<%@include file="./shared/footer.jsp"%>
	
</body>
</html>