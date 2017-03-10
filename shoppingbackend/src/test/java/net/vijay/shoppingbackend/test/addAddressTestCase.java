package net.vijay.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.vijay.shoppingbackend.dao.AddressDAO;
import net.vijay.shoppingbackend.dto.Address;

public class addAddressTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static AddressDAO  addressDAO;
	
	private Address address;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.vijay.shoppingbackend");
		context.refresh();
		
		addressDAO = (AddressDAO) context.getBean("addressDAO");
		
		
	}

@Test	
  public void addTestAddress()
  {
	address = new Address();
	address.setAddressId(1);
	address.setCity("hyd");
	address.setCountry("india");
	address.setHouseNo("1-2-12");
	address.setPin("12345");
	address.setState("Telangana");
	
		
	  assertEquals("Successfully added a row inside the table!", true , addressDAO.addAddress(address));
	}
}