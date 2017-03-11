




<div class="col-lg-2"></div>
<div class="col-lg-8">
	<table id="userTab" class="table table-bordered table-condensed">

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
				<th width="6%">View</th>
				<th width="6%">AddToCart</th>
			</tr>
		</thead>


	</table>
</div>
<div class="col-lg-2"></div>


<!-- LETV product modal code. -->

<!-- LETV product modal code. -->
 <c:forEach var="p" items="${productList}">
  <div class="modal fade" id="${p.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
       <div class="modal-header"  >
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h2 class="modal-title" id="myModalLabel">Product Details</h2>
        
      </div>
      <div class="modal-body">
       <div class="col-sm-12" id="letv">
          <div class="thumbnail">
            <img src="${images}/${p.id}.jpg" alt="" >
              <div class="caption">
                <h2>${p.name} Mobile</h2>
                <h2> ${p.price}</h2>
                <p>${p.description} </p>
                <p><a href="#" class="btn btn-info btn-xs" role="button">close</a></p>
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </div>
</div> 
   </c:forEach>

