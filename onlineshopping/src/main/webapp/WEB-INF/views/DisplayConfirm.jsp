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


<script src="${js}/jquery.js"></script>
<script src="${js}/jquery.dataTables.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="${js}/dataTables.bootstrap.js"></script>


<script src="${js}/myapp.js"></script>


</head>
<body>
	<div class="container">
		<dir class="row">
			<h2>
				<a href="home" align="right">Home</a>
			</h2>
		</dir>
		<div class="col-lg-3"></div>
		<div class="col-lg-7">
			<sf:form modelAttribute="user">
			<b>
				<table class="table" style=" width = 60%">
					<caption>
						<h1><font color="green">Success</font></h1>
						<hr/>
					</caption>

					</thead>
					<tbody>
					<h3>
						<tr>
							<th scope="row">1</th>
							<td>User Name :</td>
							<td>${user.userName}</td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Email Id :</td>
							<td>${user.email}</td>

						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Phone No :</td>
							<td>${user.phoneNo}</td>
						</tr>
						<tr>
							<th scope="row">4</th>
							<td>Role :</td>
							<td>${user.role}</td>

						</tr>
						</h3>
					</tbody>
				</table></b>
			</sf:form>
		</div>
		<div class="col-lg-2"></div>
	</div>

</body>
</html>