$(function() {

	$('#userTab')
			.DataTable(
					{
						ajax : {
							url : '/onlineshopping/all/data1',
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

										return '<a href="#"  role="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#'+ row.id + '">View</a>';

									}
								},
								{
									data : null,
									mRender : function(data, type, row) {

										return "<a href='/onlineshopping/customer/"+ row.id +"/addProductToCart'  class='btn btn-danger '>ADD TO CART</a>";

									}

								}]
					});

});
