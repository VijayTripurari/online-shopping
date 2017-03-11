
<script type="text/javascript">
$(function() {

	// solving the active menu problem
	switch (menu) {
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'home':
		$('#home').addClass('active');
		break;

	}
	
	
	
	/*Load the code for data table here*/
	
	$('#abcd')
	.DataTable(
			{
				ajax : {
					url : '/onlineshopping/all/data',
					dataSrc : ''
				},
				columns : [
						{
							data : 'id'
						},
						{
							data : 'image_url',
							mRender : function(data, type, row) {
								return '<img src="/onlineshopping/resources/images/'
										+ data
										+ '" heigh="50" width="50">';

							}
						},
						{
							data : 'name'
						},
						{
							data : 'description'
						},
						{
							data : 'price'
						},
						{
							data : 'quantity'
						},
						{
							data : 'active'
						},
						{
							data : 'cid'
						},
						{
							data : null,
							mRender : function(data, type, row) {
								console.log(row);
								
								return "<a href='/onlineshopping/admin/"+ row.id +"/editproduct'  class='btn btn-success '>View</a>";
								
							} },
							{
								data : null,
								mRender : function(data, type, row) {
									console.log(row);
									
									return "<a href='/onlineshopping/admin/"+ row.id +"/updateproduct'  class='btn btn-danger '>ADD TO CART</a>";
									
								}
							
						} ]
			});

	
	
	
});

</script>


<div class="container">

	&emsp; &emsp;
	<h2>
		<font color="#8B4513"><b>Select Products to order </b></font>
	</h2>

	<table id="abcd" class="table table-bordered table-condensed">

		<thead>
			<tr style="background-color: #ffa500">
				<th>Product Id</th>
				<th>Image</th>
				<th>Product Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>active</th>
				<th>CategoryId</th>
				<th>Edit</th>
				<th>Update</th>
				

			</tr>
		</thead>

	</table>


</div>

