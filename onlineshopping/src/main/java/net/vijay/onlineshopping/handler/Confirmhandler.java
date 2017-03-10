package net.vijay.onlineshopping.handler;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import net.vijay.shoppingbackend.dao.UserDAO;
import net.vijay.shoppingbackend.dto.Address;
import net.vijay.shoppingbackend.dto.User;
 
@Component
public class Confirmhandler {
 
	public User initFlow(){
		return new User();
	}
	
	
	 private Address userAddress1;
	 private Address userAddress2;
	 @Autowired
	 private UserDAO userDAO;
	 
	public Confirmhandler() {
	 
	   userAddress2 = new Address();
	   
	   userAddress2 = new Address();
	
		
	}

	public String validateDetails(User user,MessageContext messageContext)
	{
		
			
		boolean  status;
		
		 try
		 {
		   userDAO.addUser(user);
		   status = true;
		 }
		 catch(Exception ex)
		 {
			 status = false;
		 }
		
	
		if(user.getUserName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = false;
		}
		if(user.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = false;
		}
		if(user.getPhoneNo().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"age").defaultText("Age cannot be Empty").build());
			status = false;
		}
		
		
		if(user.getRole().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"age").defaultText("Age cannot be Empty").build());
			status = false;
		}
		
		 if (status == true)  {
			   return  "success";
	}
		 else
		    return  "failure";
}
}
