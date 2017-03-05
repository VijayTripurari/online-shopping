<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    


<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping - ${title}</title>
<script>
	window.menu = '${title}';
</script>

<link rel="stylesheet" href="${css}/bootstrap.min.css">
<link rel="stylesheet" href="${css}/styles.css">
<link rel="stylesheet" href="${css}/dataTables.bootstrap.css">

<script src="${js}/jquery.js"></script>
<script src="${js}/jquery.dataTables.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="${js}/dataTables.bootstrap.js"></script>

<script src="${js}/myapp.js"></script>
<script src="${js}/producttable.js"></script>

</head>
<body>
	<div class="wrapper">
		<!-- include nav bar  -->
		<%@include file="./shared/navbar.jsp"%>
		<div class="content">
			
<div class="container">

	<div class="col-lg-3"></div>
	<div class="col-lg-6">
		<form:form action="${contextRoot}/admin/product.do" method="POST" modelAttribute="product">
			<table>
				<tr>
					<td>Id :</td>
					<td><form:input type="text" path="id" id="id1" /></td>
				</tr>
				<tr>
					<td>Name :</td>
					<td><form:input type="text" path="name" id="name" /></td>
				</tr>
				<tr>
					<td>Desc :</td>
					<td><form:input type="text" path="description"
							id="description" /></td>
				</tr>
				<tr>
					<td>Img url :</td>
					<td><form:input type="text" path="image_url" id="image_url" /></td>
				</tr>
				<tr>
					<td>quantity :</td>
					<td><form:input type="text" path="quantity" id="quantity" /></td>
				</tr>
				<tr>
					<td>Price :</td>
					<td><form:input type="text" path="price" id="price" /></td>
				</tr>
				<tr>
					<td>is Avialable :</td>
					<td><form:input type="text" path="active" id="active" /></td>
				</tr>
				<tr>
					<td><input type="submit" name="action" value="add" /></td>
					<td><input type="submit" name="action" value="update" /></td>
				</tr>
				<tr>
					<td><input type="submit" name="action" value="delete" /></td>
					<td><input type="submit" name="action" value="search" /></td>
				</tr>

			</table>
		</form:form>
	</div>
</div class="col-lg-3">
</div>
</div>
			
					</div>

		<!--  add the footer here    -->
		<%@include file="./shared/footer.jsp"%>
		<!--  end of the footer -->
	</div>

</body>
</html>