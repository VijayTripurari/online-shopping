package net.vijay.onlineshopping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.vijay.shoppingbackend.dao.CartItemDAO;
import net.vijay.shoppingbackend.dao.ProductDAO;
import net.vijay.shoppingbackend.dao.UserDAO;
import net.vijay.shoppingbackend.dto.Cart;
import net.vijay.shoppingbackend.dto.CartItem;
import net.vijay.shoppingbackend.dto.Product;
import net.vijay.shoppingbackend.dto.User;
import java.security.Principal;

@Controller
public class CustomerController {
	@Autowired
	private ProductDAO  productDAO;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private CartItemDAO  cartItemDAO;
	
	@RequestMapping("/all/data1")
	public @ResponseBody List<Product> StaticCustomerProductDetails() {

		return productDAO.list();
	}
	
	@RequestMapping("/customer/customerAccess")
	public ModelAndView list1AllCustomerProducts() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Customer Page");
		mv.addObject("customerClickCustomerPage", true);
		mv.addObject("product", new Product());
		mv.addObject("productList", productDAO.list());
		return mv;
	}
	
	@RequestMapping("/customer/{id}/addProductToCart")
	public ModelAndView addProducttoCart(@PathVariable Integer id , Principal principal)
	{
				
		ModelAndView model = new ModelAndView("page");
		
		// get the user
		User user =  userDAO.getUserByUsername(principal.getName());
		
		// get the cart
		Cart cart = user.getCart();
		 if(cart == null)
		 {
			  cart = new Cart();
			  user.setCart(cart);
			  cart.setUser(user);
			  userDAO.updateUser(user);
			  
		 }
		     cart = user.getCart();
			Product product = productDAO.getProduct(id);
			
	
			CartItem cartItem =(CartItem)cartItemDAO.getCartItemByPid(id);		
			   if(cartItem == null)
					 cartItem = new CartItem();
			
		cartItem.setCart(cart);
					
		cartItem.setProduct(product);
		cartItem.setQuantity(cartItem.getQuantity() + 1);
		
		System.out.println(" cart item quantity : " + cartItem.getQuantity());
		
		cartItem.setTotalPrice(product.getPrice() * cartItem.getQuantity());
	
		System.out.println(" pid : " + product.getId());
		cart.setGrandTotal(cart.getGrandTotal() + cartItem.getTotalPrice());
		System.out.println(cart.getGrandTotal());
		
		cart.setCartItemsCount(cart.getCartItemsCount() + 1);
		
		
		model.addObject("customer", true);
		model.addObject("addToCart", true);
		model.addObject("customerClickCustomerPage", true);
		model.addObject("cart", cartItemDAO.listCartItems(cart));
		
		cartItemDAO.addCartItem(cartItem);
		
		return model;
		
	}
	
	@RequestMapping("/customer/viewCart")
	public ModelAndView viewCustomerCart( Principal principal)
	{
		User user =  userDAO.getUserByUsername(principal.getName());
		Cart cart =  user.getCart();
		
		
		
		ModelAndView model = new ModelAndView("page");
		
		model.addObject("cartId", cart.getId());
	    model.addObject("cartItems", cartItemDAO.listCartItems(cart));
        model.addObject("userClickViewCart", true);
        
		
		return model;
	
	}
	
	@RequestMapping("/customer/{id}/removeCartItem")
	public ModelAndView customerRemoveCartItem(@PathVariable Integer id , Principal principal)
	{
		User user =  userDAO.getUserByUsername(principal.getName());
		Cart cart =  user.getCart();
		CartItem cartItem =  cartItemDAO.getCartItem(id);
		
		cartItemDAO.deleteCartItemByPid(id);
		
		
		ModelAndView model = new ModelAndView("page");
		
		model.addObject("cartId", cart.getId());
	    model.addObject("cartItems", cartItemDAO.listCartItems(cart));
        model.addObject("userClickViewCart", true);
		
		
	    return model;
	}
	
	@RequestMapping("/customer/removeAllCartItems")
	public ModelAndView customerRemoveAllCartItems( Principal principal)
	{
		User user =  userDAO.getUserByUsername(principal.getName());
		Cart cart =  user.getCart();
	
		
		cartItemDAO.deleteAllCartItems();
		
		
		ModelAndView model = new ModelAndView("page");
		
		model.addObject("cartId", cart.getId());
		model.addObject("cartStatus", "No items Found ");
	    model.addObject("cartItems", cartItemDAO.listCartItems(cart));
        model.addObject("userClickViewCart", true);
		
		
	    return model;
	}
	
	

}



