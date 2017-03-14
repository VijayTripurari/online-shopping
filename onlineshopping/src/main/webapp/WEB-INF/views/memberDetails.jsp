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


			<form:form modelAttribute="user" enctype="multipart/form-data">
				<br />
				<h1>
					<font color="Orange"> Enter Registration Details</font>
				</h1>
				<hr />
				<h4>
					<b>
						<table class="table-bordered">


							<div class="form-group">
								<form:label path="userName" for="userName">User Name :</form:label>
								<form:input path="userName" placeholder="Enter User Name"
									id="userName" class="form-control input-sm" width="300px" />
								<div class="has-error">
									<form-errors path="userName" class="help-inline" />
								</div>
							</div>
							<div class="form-group">
								<form:label path="email" for="name">Email Id :</form:label>
								<form:input path="email" placeholder="Enter Email Id" id="email"
									class="form-control input-sm" width="300px" />
								<div class="has-error">
									<form-errors path="email" class="help-inline" />
								</div>
							</div>
							<div class="form-group">
								<form:label path="phoneNo" for="phoneNo">Phone No:</form:label>
								<form:input path="phoneNo" placeholder="Enter Phone No :"
									id="phoneNo" class="form-control input-sm" width="300px" />
								<div class="has-error">
									<form-errors path="phoneNo" class="help-inline" />
								</div>
							</div>



							<div class="form-group">
								<form:label for="role" path="role">Role</form:label>

								<form:select path="role" id="role" class="form-control">

									<form:option value="ADMIN"></form:option>
									<form:option value="CUSTOMER"></form:option>

								</form:select>
								<div class="has-error">
									<form-errors path="role" class="help-inline" />
								</div>
							</div>
							<tr>
								<td><input name="_eventId_submit" type="submit"
									value="Submit" /><br /></td>
							</tr>

						</table>
					</b>
				</h4>

			</form:form>

		</div>
	</div class="col-lg-2">
	</div>
	</div>
</body>
</html>