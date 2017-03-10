package net.vijay.onlineshopping.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;


import net.vijay.shoppingbackend.dto.User;
 
@Component
public class Demohandler {
 
	public User initFlow(){
		return new User();
	}
	
	
	

 
	public String validateDetails(User user,MessageContext messageContext){
		String status = "success";
		System.out.println("email  : " + user.getEmail());
			
		
		
		
		
		if(user.getUserName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(user.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(user.getPhoneNo().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"age").defaultText("Age cannot be Empty").build());
			status = "failure";
		}
		
		
		if(user.getRole().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"age").defaultText("Age cannot be Empty").build());
			status = "failure";
		}
		
		return status;
	}
}
