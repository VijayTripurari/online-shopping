
<div class="container">

	&emsp; &emsp;
	<h2>
		<font color="#8B4513"><b>Select Products to order </b></font>
	</h2>

	<table id="example" class="table table-bordered table-condensed">

		<thead>
			<tr style="background-color: #ffa500">
				<th>Product Id</th>
				<th>Image</th>
				<th>Product Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>active</th>
				<th>Action</th>

			</tr>
		</thead>

	</table>


</div>

<!-- LETV product modal code. -->
<c:forEach var="p" items="${products}">
	<div class="modal fade" id="${p.id}" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="myModalLabel">Product Details</h2>

				</div>
				<div class="modal-body">
					<div class="col-sm-12" id="letv">
						<div class="thumbnail">
							<img src="${images}/${p.id}.jpg" alt="">
							<div class="caption">
								<h2>${p.name}Mobile</h2>
								<h2>${p.price}</h2>
								<p>${p.description}</p>
								<p>
									<a href="#" class="btn btn-info btn-xs" role="button">close</a>
								</p>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</c:forEach>
