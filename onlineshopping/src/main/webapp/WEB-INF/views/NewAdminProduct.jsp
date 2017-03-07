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
<body >
	<div class="wrapper" style = " backgound-color : #ffff8d;">
		<!-- include nav bar  -->
		<%@include file="./shared/navbar.jsp"%>
		<div class="content">
						
			<c:if test="${userClickNewAdminPage == true}">
			   <%@include file="NewAdminProduct.jsp" %>
			</c:if>
		</div>

		<!--  add the footer here    -->
		<%@include file="./shared/footer.jsp"%>
		<!--  end of the footer -->
	</div>

</body>
</html>