<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-default" id="nav1">
	<div class="container-fluid">

		<a class="navbar-brand" href="#"><img
			src="${images}/eshoplogo.png" alt="Logo"></a>

		<ul class="nav navbar-nav">

			<li id="home"><a href="${contextRoot}/home">Home</a></li>

			<li id="about"><a href="${contextRoot}/about">AboutUs</a></li>


			<li id="contact"><a href="${contextRoot}/contact">ContactUs</a></li>
			<li id="Admin"><a href="${contextRoot}/adminAccess">Admin</a></li>
   	 	
			<li><div class="dropdown">
					<button class="btn btn-primary btn-lg dropdown-toggle"
						type="button" data-toggle="dropdown">
						Admin<span class="caret"></span>
					</button>

					<ul class="dropdown-menu">
						
							<li class="divider"></li>
							<li><a href="${contextRoot}/adminCategoryAccess">Category</a></li>
                            <li class="divider"></li>
							<li><a href="${contextRoot}/NewAdminProductAccess">Products</a></li>

						
					</ul>

				</div></li>
        

			<li><div class="dropdown">
					<button class="btn btn-primary btn-lg dropdown-toggle"
						type="button" data-toggle="dropdown">
						Products <span class="caret"></span>
					</button>

					<ul class="dropdown-menu">
						<c:forEach var="category" items="${categories}">
							<li class="divider"></li>
							<li><a href="${contextRoot}/allProducts">${category.name}</a></li>

						</c:forEach>
					</ul>

				</div></li>
			<li><a href="#" role="button" class="btn btn-primary btn-lg"
				data-toggle="modal" data-target="#myModal"><font color="black">Login</font></a></li>
			<li><a href="#" role="button" class="btn btn-success btn-lg"
				data-toggle="modal" data-target="#RegisterModal"><font
					color="black">Register</font></a></li>


		</ul>
		<ul class="nav navbar-nav pull-right">

			<li><a href="#">Cart</a></li>
			<li id="li1" style="font-size: large; font-weight: bold;"><a
				href="#"><span class="glyphicon glyphicon-user">User</span></a></li>
			<li style="font-size: large; font-weight: bold;"><a href="#"><span
					class="glyphicon glyphicon-off">LogOut</span></a></li>
		</ul>

	</div>
	</nav>

</body>
</html>