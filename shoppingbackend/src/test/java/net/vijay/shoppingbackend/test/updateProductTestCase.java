package net.vijay.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.vijay.shoppingbackend.dao.ProductDAO;
import net.vijay.shoppingbackend.dto.Product;

public class updateProductTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static ProductDAO productDAO;
	
	private Product  product ;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.vijay.shoppingbackend");
		context.refresh();
		
		productDAO = (ProductDAO) context.getBean("productDAO");
		
		
	}

	@Test	
	  public void updateTestCategory()
	  {
		    
		
	//	  assertEquals("Successfully added a row inside the table!", true , productDAO.updateProduct(5, "Nexus", "Nexus Mobile","5.jpg",6,9800,true));
		  
	  }


}
