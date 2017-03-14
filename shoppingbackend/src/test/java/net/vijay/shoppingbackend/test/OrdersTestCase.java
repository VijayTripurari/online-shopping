package net.vijay.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.vijay.shoppingbackend.dao.OrdersDAO;
import net.vijay.shoppingbackend.dto.OrderItem;
import net.vijay.shoppingbackend.dto.Orders;

public class OrdersTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static OrdersDAO orderDAO;
	
	private Orders order;
	private OrderItem orderItem;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.vijay.shoppingbackend");
		context.refresh();
		
		orderDAO = (OrdersDAO) context.getBean("orderDAO");
		
		
	}

@Test	
  public void addTestProduct()
  {
	
	Orders o1 = new Orders();
	 o1.setId(49);
	 o1.setGrandTotal(8000);
	 o1.setOrderItemsCount(1);
	 o1.setUserId(2); 
	 
	 OrderItem  ot = new OrderItem();
	 ot.setId(161);
	 ot.setQuantity(1);
	 ot.setTotalprice(8000);
	 ot.setCart_id(49);
	 ot.setProduct_id(2);
	 
	
	
	assertEquals("Successfully added a row inside the table!", true , orderDAO.addOrdersEntry(o1));
	  
 


}
}