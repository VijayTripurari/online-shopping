	
<div class="container">

	<div class="col-lg-3"></div>
	<div class="col-lg-7">
		<form:form action="${contextRoot}/product1.do" method="POST" modelAttribute="product" enctype="multipart/form-data">
		
		 <b>
		 
		 <h3> Whenever adding Product dont give Id(Auto generated)</h3>
		 <h4><font color="">for INSERT , UPDATE first search the product by ID</font></h4>
		 	<table class="table-bordered">
		      <caption><h2><font color="#8b4513">Product Information</font></h2></caption>
		      
				<tr>
					<td align="center">Product Id :</td>
					<td><form:input type="text" path="id" id="id1" /></td><font color="green"> </font>
				  <form:errors path="id"/>
				</tr>
				<tr>
					<td align="center">Product Name :</td>
					<td><form:input type="text" path="name" id="name" /></td>
					  <form:errors path="name"/>
				</tr>
				<tr>
					<td align="center">Description :</td>
					<td><form:input type="text" path="description"
							id="description" /></td>
							  <form:errors path="description"/>
				</tr>
				<tr>
					<td align="center">Produdct Img :</td>
					<td><form:input type="text" path="image_url" id="image_url" />
					
					<form:input type="file" path="file" id="file"/>Upload Image
					
					</td>
					  <form:errors path="image_url"/>
				</tr>
				<tr>
					<td align="center">Product quantity :</td>
					<td><form:input type="text" path="quantity" id="quantity" /></td>
					  <form:errors path="quantity"/>
				</tr>
				<tr>
					<td align="center">Price :</td>
					<td><form:input type="text" path="price" id="price" /></td>
					  <form:errors path="price"/>
				</tr>
				<tr>
					<td align="center">is  Avialable :</td>
					<td><form:input type="text" path="active" id="active" /></td>
					  <form:errors path="active"/>
					
				</tr>
				<tr>
					<td align="center" colspan = "2"><input type="submit" class="btn btn-md btn-primary" name="action" value="add" />
					</td>
				</tr>

			</table> </b>
		</form:form>
	</div>
</div class="col-lg-2">
</div>
<div class="container">
  <%@include file="ListAdminProducts.jsp"%>
</div>
</div>