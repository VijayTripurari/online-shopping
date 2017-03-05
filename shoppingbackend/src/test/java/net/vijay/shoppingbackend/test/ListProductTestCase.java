package net.vijay.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.vijay.shoppingbackend.dao.ProductDAO;
import net.vijay.shoppingbackend.dto.Product;

public class ListProductTestCase {
	
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
	  public void listTestCategory()
	  {
		    
		
		  assertEquals("Successfully added a row inside the table!", true , productDAO.list());
		  
	  }


}
