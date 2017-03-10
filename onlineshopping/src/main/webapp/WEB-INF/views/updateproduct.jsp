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


</head>
<body>
<body><div class="col-lg-3"></div>
 <div class="col-lg-6">
<div class="container-fluid">
                         
							<h2>
								<font color="#8b4513">Product Information</font>
							</h2>
				<form:form action="${contextRoot}/product.do" method="POST"
					modelAttribute="product" enctype="multipart/form-data">



					<table class="table-bordered">
						
						

						<div class="form-group">
							<form:label path="id" for="id"></form:label>
							<form:input path="id" placeholder="Product Id" id="id"
								class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="id" class="help-inline" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="name" for="name"></form:label>
							<form:input path="name" placeholder="Product Name" id="name"
								class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="name" class="help-inline" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="description" for="description"></form:label>
							<form:input path="description" placeholder="Product Desc"
								id="description" class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="description" class="help-inline" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="image_url" for="image_url">Image Url</form:label>
							<form:input path="image_url" placeholder=" Imgage "
								id="image_url" class="form-control input-sm" width="300px" />
							<form:input type="file" path="file" id="file"/>Upload Image
							<div class="has-error">
								<form-errors path="image_url" class="help-inline" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="quantity" for="quantity"></form:label>
							<form:input path="quantity" placeholder="Quantity " id="quantity"
								class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="quantity" class="help-inline" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="price" for="price"></form:label>
							<form:input path="price" placeholder="Price" id="price"
								class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="price" class="help-inline" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="active" for="active"></form:label>
							<form:input path="active" placeholder="Active" id="active"
								class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="active" class="help-inline" />
							</div>
						</div>
						
						<div class="form-group">
							<form:label path="cid" for="cid">Category Id</form:label>
							<form:input path="cid" placeholder="Category Id" id="cid"
								class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="cid" class="help-inline" />
							</div>
						</div>
						<tr>
							<td align="center" colspan="2"><input type="submit"
								class="btn btn-md btn-primary" name="action" value="delete" />
							</td>
						</tr>

					</table>
					
				</form:form>
			</div>	
	</div>	
	<div class="col-lg-3"></div>		

</body>
</html>