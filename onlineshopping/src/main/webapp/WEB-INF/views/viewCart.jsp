<div class="container">
<div align="right"> <a href="checkoutDetails"  class="btn btn-lg btn-warning"><font color="black">CHECK OUT</font></a>
</div>
    
	&emsp; &emsp;
	<h2>
		&nbsp;<font color="#8B4513"><b>Your Cart Details : </b></font>
	</h2>
	 <br/>
    <hr>
	<table class="table">
  <thead class="thead-default">
   
    <tr>
      
      <th></th>
      <th> </th>
      <th></th>
      <th></th>
      <th><a href="/onlineshopping/customer/customerAccess"  class="btn btn-success">ADD ITEM</a></th>
    </tr>
   
    <tr>
      
      <th>Cart Item Id</th>
      <th>Product </th>
      <th>Quantity</th>
      <th>Product Total</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  
     
    <c:if  test="${not empty cartStatus}">
       
        ${cartStatus} 
    
    </c:if>
  
    <c:set var="grandtotal" value="${0}" />
    <c:forEach  var="cartItem"   items="${cartItems}">
    <tr><h2>
      <th>${cartItem.id}</th>
      <th>${cartItem.product.name}</th>
      <th>${cartItem.quantity}</th>
      <th>${cartItem.totalPrice}</th>
      <th><a href="/onlineshopping/customer/${cartItem.id}/removeCartItem"  class="btn btn-danger">DELETE</a></th>
      <c:set  var = "grandtotal" value ="${grandtotal + cartItem.totalPrice} "  />
      </h2>
    </tr>
    <tr>
    
    
    </tr>
   
    </c:forEach>
     <tr>
      <th><a href="/onlineshopping/customer/removeAllCartItems"  class="btn btn-danger">REMOVE ALL</a></th>
      <th></th>
      <th><b><h3>Grand Total :</h3></th>
      <th><h3>${grandtotal}</b></h3></th>
    </tr>
    
  </tbody>
</table>


</div>