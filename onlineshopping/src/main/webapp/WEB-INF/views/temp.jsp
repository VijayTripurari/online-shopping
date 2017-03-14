<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="net.vijay.shoppingbackend.dto.*"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<script type="text/javascript">
	function addInput(divName) {

		document.getElementById(divName).innerHTML = "";
	}
</script>

</head>
<body bgcolor="#FAFAD2">

	<div class="container">



		<CENTER>
			<table style="background-color: #FAFAD2; width: 80%; height: 80%">
				<tr>
					<td>
						<h2>
							<font color="darkbrown"> Select Your Bank : </font>
						</h2>
					</td>
				</tr>
				<tr>
				<td>	<sf:form modelAttribute="cart"
							enctype="multipart/form-data">



							<div class="row">
								<h2>Select you Bank :</h2>
								<br>
								<div class="bs-docs-example">
									<select class="selectpicker" data-style="btn-primary"
										style="display: none;">
										<option value="icici">ICICI</option>
  										<option value="sbi">SBI</option>
  										<option value="axis">AXIS</option>
  										<option value="hdfc">HDFC</option>
  										<option value="andhra">ANDHRA</option>
									</select> <br />
								</div>
								<div id="dynamicDiv"></div>
								<br>


								<form class="form-horizontal">
  <div class="form-group">
    <label class="control-label col-sm-2" for="name">Acount Holder Name:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name" placeholder="Enter Your Name">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="Acno">AccountNo:</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" id="Acno" placeholder="Enter Ac No">
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-2" for="amout">Amount to Pay:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="amount" >
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="ifsc">IFSC Code:</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" id="ifsc" placeholder="Enter IFSC code">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label><input type="checkbox">I Agree to the Terms & Conditions. </label>
        
      </div>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">ConfirmPayment</button>
    </div>
  </div>
</form>
						</sf:form> </td>
				</tr>
			</table>
	</div>
</body>

</html>