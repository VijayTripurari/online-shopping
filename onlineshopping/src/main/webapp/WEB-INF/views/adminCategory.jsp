
<div class="container">

	<div class="col-lg-3"></div>
	<div class="col-lg-7">
		<form:form  action="${contextRoot}/admin.do" method="POST" modelAttribute="category" enctype="multipart/form-data">
		
		 <b>
		 
		 <h3> Whenever adding Category dont give Id(Auto generated)</h3>
		 <h4><font color="">for INSERT , UPDATE first search the product by ID</font></h4>
		 	<table class="table-bordered">
		      <caption><h2><font color="#8b4513">Category Information</font></h2></caption>
		      
				<tr>
					<td align="center">Category Id :</td>
					<td><form:input type="text" path="id" id="id1" /></td><font color="green"> </font>
				  <form:errors path="id"/>
				</tr>
				<tr>
					<td align="center">Category Name :</td>
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
					<td align="center">is  Avialable :</td>
					<td><form:input type="text" path="active" id="active" /></td>
					  <form:errors path="active"/>
					
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