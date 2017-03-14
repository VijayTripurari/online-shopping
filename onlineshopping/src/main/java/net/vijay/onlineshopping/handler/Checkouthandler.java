package net.vijay.onlineshopping.handler;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import net.vijay.shoppingbackend.dto.Cart;
import net.vijay.shoppingbackend.dto.User;
import net.vijay.shoppingbackend.dao.*;
 
@Component
public class Checkouthandler {
	
	@Autowired
	HttpSession session; 
	@Autowired
	UserDAO userDAO;
	
	public Cart initFlow(String name){
		
	       /*    User user = null;
	           if(user == null)
	           {
	        	   user   =(User) session.getAttribute("user");
	           }
	           
	           return user.getCart();
	           */
		
		User user =  userDAO.getUserByUsername(name);
		
		return user.getCart();
		
		
	}

}
