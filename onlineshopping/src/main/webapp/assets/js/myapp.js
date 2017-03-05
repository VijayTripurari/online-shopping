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
	
	$('#example')
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
							data : null,
							mRender : function(data, type, row) {

								console.log(row);
								return '<a href="#"  role="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#'
										+ row.id
										+ '">View</a> <button type="submit" class="btn btn-danger btn-lg">Add to Cart</button>';

							}
						} ]
			});

	
	
	
});
