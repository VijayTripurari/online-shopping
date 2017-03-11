	
<div class="container">
<b>
	<div class="col-lg-3"></div>
 <div class="col-lg-6">
<div class="container-fluid">
                         
							<h2>
								<font color="#8b4513">Product Information</font>
							</h2>
						


				<form:form action="${contextRoot}/product.do" method="POST" modelAttribute="product" enctype="multipart/form-data">

					<table class="table-bordered">
						

						<div class="form-group">
							<form:label path="id" for="id">Id :</form:label>
							<form:input path="id" placeholder="Product Id" id="id"
								class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="id" class="help-inline" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="name" for="name">Name :</form:label>
							<form:input path="name" placeholder="Product Name" id="name"
								class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="name" class="help-inline" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="description" for="description">Description</form:label>
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
							<form:label path="quantity" for="quantity">Quantity</form:label>
							<form:input path="quantity" placeholder="Quantity " id="quantity"
								class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="quantity" class="help-inline" />	
							</div>
						</div>
						<div class="form-group">
							<form:label path="price" for="price">Price :</form:label>
							<form:input path="price" placeholder="Price" id="price"
								class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="price" class="help-inline" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="active" for="active">Active</form:label>
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
								class="btn btn-lg btn-primary" name="action" value="add" />
							</td>
						</tr>

					</table>
					
				</form:form>
			</div>	
	</div>	
	<div class="col-lg-3"></div>	
	</b>	
 </div>
<!--  DATA TABLE -->
<div class="col-lg-2"></div>
<div class="col-lg-8">
<b>
<table id="example" class="table table-bordered table-condensed">

		<thead>
			<tr style="background-color: #ffa500">
				<th width="6%">Product Id</th>
				<th width="6%">Image</th>
				<th width="6%">Product Name</th>
				<th width="6%">Description</th>
				<th width="6%">Price</th>
				<th width="6%">Quantity</th>
				<th width="6%">active</th>
				<th width="6%">CatgoryId</th>
				<th width="6%">Edit</th>
				<th width="6%">Update</th>
				

			</tr>
		</thead>

	</table></b>
	</div>
	<div class="col-lg-2">
	</div>

</div>
