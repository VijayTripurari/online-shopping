package net.vijay.onlineshopping.handler;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import net.vijay.shoppingbackend.dao.ProductDAO;
import net.vijay.shoppingbackend.dao.CartItemDAO;
import net.vijay.shoppingbackend.dao.UserDAO;
import net.vijay.shoppingbackend.dto.Address;
import net.vijay.shoppingbackend.dto.User;
import net.vijay.shoppingbackend.dto.Cart;
import net.vijay.shoppingbackend.dto.CartItem;
import net.vijay.shoppingbackend.dto.Product;
 
@Component
public class Bankhandler {
 
	 @Autowired
	 private UserDAO userDAO;
	 
	 @Autowired
	 private CartItemDAO cartItemDAO;
	 
	 @Autowired
	 private ProductDAO productDAO;
	
	public String validateDetails(Cart cart,MessageContext messageContext)
	{
		
	  	
		
		return "success";
			
		}
}
