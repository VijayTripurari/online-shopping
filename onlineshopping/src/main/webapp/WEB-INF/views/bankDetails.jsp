<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="net.vijay.shoppingbackend.dto.*"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="javax.servlet.http.*"%>

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


<script src="${js}/jquery.js"></script>
<script src="${js}/jquery.dataTables.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="${js}/dataTables.bootstrap.js"></script>


<script src="${js}/myapp.js"></script>
<style>
.abc {
	top: 20px;
	left: 600px;
	font-size: large;
	font-weight: bolder;
	color: navy;
}
</style>


</head>
<body bgcolor="#FAFAD2">
	<%@include file="./shared/navbar.jsp"%>

	<div class="container">

		<div class="col-sm-2"></div>
		<div class="col-sm-8">

			<sf:form modelAttribute="cart" enctype="multipart/form-data"
				class="form-horizontal">
				<br />
				<h2>
				&nbsp;&emsp;&emsp;&emsp;&emsp;<font color="#8B4513"><b>Enter Your Details :
				</b></font>
		     	</h2>
			   <br />



				<div class="form-group">
					<label class="control-label col-sm-2" for="name">Acount
						Holder Name:</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="name"
							placeholder="Enter Your Name">
					</div>
				</div>


				<div class="form-group">
					<label class="control-label col-sm-2" for="Bank">Bank Name:</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="Bank"
							placeholder="Enter Bank Name">
					</div>
				</div>



				<div class="form-group">
					<label class="control-label col-sm-2" for="Acno">Account
						No:</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="Acno"
							placeholder="Enter Ac No">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="amout">Amount to
						Pay:</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" readonly="true"
							id="amount" value="${cart.grandTotal}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="ifsc">IFSC Code:</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="ifsc"
							placeholder="Enter IFSC code">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<div class="checkbox">
							<label><input type="checkbox">I Agree to the
								Terms & Conditions. </label>

						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<h3>
							<input name="_eventId_edit" type="submit"
								value="BACK"
								class="btn btn-lg btn-primary" />
								<input name="_eventId_submit" type="submit"
								value="Confirm Payment"
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