<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div class="modal fade" id="edit" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">

				<button type="button" class="close" data-dismiss="modal">
					&times;</span>
				</button>
				<h2 class="modal-title" id="myModalLabel">Product -- ${p.name}</h2>

			</div>
			<div class="modal-body">
				<form:form action="${contextRoot}/product.do" method="POST"
					modelAttribute="product" enctype="multipart/form-data">



					<h3>Whenever adding Product dont give Id(Auto generated)</h3>
					<h4>
						<font color="">for INSERT , UPDATE first search the product
							by ID</font>
					</h4>
					<table class="table-bordered">
						<caption>
							<h2>
								<font color="#8b4513">Product Information</font>
							</h2>
						</caption>

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
							<form:label path="image_url" for="image_url"></form:label>
							<form:input path="image_url" placeholder=" Imgage "
								id="image_url" class="form-control input-sm" width="300px" />
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
						<tr>
							<td align="center" colspan="2"><input type="submit"
								class="btn btn-md btn-primary" name="action" value="Update" />
							</td>
						</tr>

					</table>
					
				</form:form>

			</div>
		</div>
	</div>

</div>

<!--  UPDATE MODAL -->

<div class="modal fade" id="update" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">

				<button type="button" class="close" data-dismiss="modal">
					&times;
				</button>
				<h2 class="modal-title" id="myModalLabel">Product -- ${p.name}</h2>

			</div>
			<div class="modal-body">
				<form:form action="${contextRoot}/product.do" method="POST"
					modelAttribute="product" enctype="multipart/form-data">



					<h3>Whenever adding Product dont give Id(Auto generated)</h3>
					<h4>
						<font color="">for INSERT , UPDATE first search the product
							by ID</font>
					</h4>
					<table class="table-bordered">
						<caption>
							<h2>
								<font color="#8b4513">Product Information</font>
							</h2>
						</caption>

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
							<form:label path="image_url" for="image_url"></form:label>
							<form:input path="image_url" placeholder=" Imgage "
								id="image_url" class="form-control input-sm" width="300px" />
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
						<tr>
							<td align="center" colspan="2"><input type="submit"
								class="btn btn-md btn-primary" name="action" value="Update" />
							</td>
						</tr>

					</table>
					
				</form:form>

			</div>
		</div>
	</div>

</div>



</body>
</html>