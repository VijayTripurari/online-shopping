
<div class="container">

	<div class="col-lg-3"></div>
	<div class="col-lg-7">
		<form:form action="${contextRoot}/product.do" method="POST" modelAttribute="product">
		 <b>	<table class="table-bordered">
		      <caption><h2><font color="#8b4513">Product Information</font></h2></caption>
		      
				<tr>
					<td align="center">Product Id :</td>
					<td><form:input type="text" path="id" id="id1" /></td><font color="green"><h4> Whenever adding Product dont give Id(Auto generated)</h4> </font>
				</tr>
				<tr>
					<td align="center">Product Name :</td>
					<td><form:input type="text" path="name" id="name" /></td>
				</tr>
				<tr>
					<td align="center">Description :</td>
					<td><form:input type="text" path="description"
							id="description" /></td>
				</tr>
				<tr>
					<td align="center">Produdct Img :</td>
					<td><form:input type="text" path="image_url" id="image_url" /></td>
				</tr>
				<tr>
					<td align="center">Product quantity :</td>
					<td><form:input type="text" path="quantity" id="quantity" /></td>
				</tr>
				<tr>
					<td align="center">Price :</td>
					<td><form:input type="text" path="price" id="price" /></td>
				</tr>
				<tr>
					<td align="center">is  Avialable :</td>
					<td><form:input type="text" path="active" id="active" /></td>
				</tr>
				<tr>
					<td align="center" colspan = "2"><input type="submit" class="btn btn-md btn-primary" name="action" value="add" />
					<input type="submit" class="btn btn-md btn-success" name="action" value="update" />
			
					<input type="submit" class="btn btn-md btn-warning" name="action" value="delete" />
					<input type="submit" class="btn btn-md btn-danger" name="action" value="search" /></td>
				</tr>

			</table> </b>
		</form:form>
	</div>
</div class="col-lg-2">
</div>
</div>