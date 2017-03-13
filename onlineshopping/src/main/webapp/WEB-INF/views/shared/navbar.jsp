
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <b>
	<nav class="navbar navbar-default" id="nav1">
	<div class="container-fluid">

		<a class="navbar-brand" href="#"><img
			src="${images}/eshoplogo.png" alt="Logo"></a>

		<ul class="nav navbar-nav">

			<li id="home"><a href="${contextRoot}/home">Home</a></li>

			<li id="about"><a href="${contextRoot}/about">AboutUs</a></li>


			<li id="contact"><a href="${contextRoot}/contact">ContactUs</a></li>
			<security:authorize access="hasAuthority('ADMIN')">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">ADMIN<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${contextRoot}/admin/adminCategoryAccess">Category</a>
						<li>
						<li><a href="${contextRoot}/admin/adminAccess">Products</a></li>


					</ul></li>
			</security:authorize>

			<security:authorize access="hasAuthority('CUSTOMER')">
				<li><div class="dropdown">
						<button class="btn btn-primary btn-lg dropdown-toggle"
							type="button" data-toggle="dropdown">
							Products <span class="caret"></span>
						</button>

						<ul class="dropdown-menu">
							<c:forEach var="category" items="${categories}">
								<li class="divider"></li>
								<li><a href="${contextRoot}/customer/customerAccess">${category.name}</a></li>

							</c:forEach>
						</ul>

					</div></li>
			</security:authorize>

          <security:authorize access="isAnonymous()">
			<li><a href="${contextRoot}/login" role="button"
				class="btn btn-default btn-lg" data-toggle="modal"><font
					color="black">Login</font></a></li>
          </security:authorize>

         <security:authorize access="isAnonymous()">
			<li><a href="memberDetails" role="button"
				class="btn btn-default btn-large"> <font color="black">Register</font></a></li>
         </security:authorize>

		</ul>
		<ul class="nav navbar-nav pull-right">

			
		<security:authorize access="hasAuthority('CUSTOMER')">
		 <li><a href="${contextRoot}/customer/viewCart">
          <i class="glyphicon glyphicon-shopping-cart"></i> Cart
        </a></li>
		 </security:authorize>	
			
			<security:authorize access="isAuthenticated()">
				<li style="font-size: large; font-weight: bold;" id="logout"><a
					href="${contextRoot}/perform_logout"><span
						class="glyphicon glyphicon-off"> </span>Logout</a></li>
			</security:authorize>
		</ul>

	</div>
	</nav>
</b>
</body>
</html>