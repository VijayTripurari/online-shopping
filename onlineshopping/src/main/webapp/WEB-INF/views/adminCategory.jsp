
<div class="container">

	<div class="col-lg-3"></div>
	<div class="col-lg-7">
						<form:form action="${contextRoot}/admin.do" method="POST" modelAttribute="category" enctype="multipart/form-data">

					<table class="table-bordered">
						

						<div class="form-group">
							<form:label path="id" for="id">Id :</form:label>
							<form:input path="id" placeholder="ID Auto Generated" id="id"
								class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="id" class="help-inline" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="name" for="name">Name :</form:label>
							<form:input path="name" placeholder="Category Name" id="name"
								class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="name" class="help-inline" />
							</div>
						</div>
						<div class="form-group">
							<form:label path="description" for="description">Description</form:label>
							<form:input path="description" placeholder="Category Desc"
								id="description" class="form-control input-sm" width="300px" />
							<div class="has-error">
								<form-errors path="description" class="help-inline" />
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
						<tr>
							<td align="center" colspan="2"><input type="submit"
								class="btn btn-lg btn-success" name="action" value="add" />
								<input type="submit"
								class="btn btn-lg btn-primary" name="action" value="delete" />
								<input type="submit"
								class="btn btn-lg btn-success" name="action" value="update" />
								<input type="submit"
								class="btn btn-lg btn-danger" name="action" value="search" />
							</td>
						</tr>

					</table>
					
				</form:form>
		
	</div>
</div class="col-lg-2">
</div>
</div>