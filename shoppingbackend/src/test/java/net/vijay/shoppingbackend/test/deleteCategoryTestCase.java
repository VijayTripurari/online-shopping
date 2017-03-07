package net.vijay.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.vijay.shoppingbackend.dao.CategoryDAO;
import net.vijay.shoppingbackend.dto.Category;

public class deleteCategoryTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static CategoryDAO categoryDAO;
	
	private Category  category;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.vijay.shoppingbackend");
		context.refresh();
		
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		
		
	}

@Test	
  public void deleteTestCategory()
  {
	    
	
	//  assertEquals("Successfully added a row inside the table!", true , categoryDAO.deleteCategory(3));
	  
  }

}
