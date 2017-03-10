package net.vijay.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.vijay.shoppingbackend.dao.UserDAO;
import net.vijay.shoppingbackend.dto.Address;
import net.vijay.shoppingbackend.dto.User;

import java.util.List;
import java.util.ArrayList;

public class addUserTestCase {
	
	private static AnnotationConfigApplicationContext context ;
	private static UserDAO  userDAO;
	
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.vijay.shoppingbackend");
		context.refresh();
		
		userDAO = (UserDAO)context.getBean("userDAO");
		
		
	}

@Test	
  public void addTestProduct()
  {
	
	User user = new User();
	 
	 user.setUserName("steven");
	 user.setEmail("steven@gmail.com");
	 user.setPhoneNo("7891234567");
	 user.setEnabled(true);
	 user.setRole("CUSTOMER");
	 user.setPassword("steven@123");
	   // create empty address list
	
	   // add 1 address
	      Address address1 = new Address();
	     
	      address1.setCity("Hyd");
	      address1.setCountry("india");
	      address1.setHouseNo("4-1-23");
	      address1.setPin("500009");
	      address1.setState("Telangana");
	      address1.setStreet("Liberty");
	      address1.setUser(user);
	      user.getAddressList().add(address1);
	      
	      
	      // add 2 address
	      
	      Address address2 = new Address();
	      
	      address2.setCity("Hyd");
	      address2.setCountry("india");
	      address2.setHouseNo("6-5-98");
	      address2.setPin("540987");
	      address2.setState("Telangana");
	      address2.setStreet("Uppal"); 
	      address2.setUser(user);
	      
	      user.getAddressList().add(address2);
	      
	      
	      	  
	 assertEquals("Successfully added a row inside the table!", true , userDAO.addUser(user));
	  
 


}
}