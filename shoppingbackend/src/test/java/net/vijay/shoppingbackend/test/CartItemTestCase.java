package net.vijay.shoppingbackend.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.vijay.shoppingbackend.dao.CartItemDAO;
import net.vijay.shoppingbackend.dao.ProductDAO;
import net.vijay.shoppingbackend.dao.UserDAO;
import net.vijay.shoppingbackend.dto.Cart;
import net.vijay.shoppingbackend.dto.CartItem;
import net.vijay.shoppingbackend.dto.Product;
import net.vijay.shoppingbackend.dto.User;


public class CartItemTestCase {

	private static AnnotationConfigApplicationContext context;
	
	private static CartItemDAO cartItemDAO;

	private static UserDAO userDAO;

	private static ProductDAO productDAO;
	
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.vijay.shoppingbackend");
		context.refresh();
		cartItemDAO = (CartItemDAO)context.getBean("cartItemDAO");
		userDAO = (UserDAO)context.getBean("userDAO");
		productDAO = (ProductDAO)context.getBean("productDAO");

	}

	
/*	@Test
	public void testListCartItem(){
		
		// get the user
		User user = userDAO.getUser(2);
		// get the cart
		Cart cart = user.getCart();
		// get the cartItems
		
		assertEquals("List CartItem fetched Successfully!",0,cartItemDAO.listCartItems(cart).size());
		
		
	}
*/
	
	// Adding a new cartItem
@Test
	public void testAddCartItem() {
		
		// get the user
		User user = userDAO.getUser(2);
		System.out.println(" user name :" +user.getUserName());
		// get the cart
		Cart cart = user.getCart();
		//System.out.println("cart items count :" + cart.getCartItemsCount());

		// get the product
		Product product = productDAO.getProduct(7);
		
		System.out.println("pid :" + product.getId());
		
		CartItem cartItem = new CartItem();
		cartItem.setCart(cart);
		cartItem.setProduct(product);
		cartItem.setQuantity(2);
		
		System.out.println(" cart item quantity : " + cartItem.getQuantity());
		cartItem.setTotalPrice(product.getPrice() * cartItem.getQuantity());
	
		cart.setGrandTotal(cart.getGrandTotal() + cartItem.getTotalPrice());
		cart.setCartItemsCount(cart.getCartItemsCount() + 1);
	//	assertEquals("Successfully added the cart item!",true, cartItemDAO.addCartItem(cartItem));
		
		
	}
	

	/*updating the existing cart item
	@Test
	public void testUpdateCartItem() {
				
		CartItem cartItem = cartItemDAO.getCartItem(7);
		
		Cart cart = cartItem.getCart();
		
		Product product = cartItem.getProduct();
		
		int oldQuantity = cartItem.getQuantity();

		cartItem.setQuantity(cartItem.getQuantity() + 1);
		
		cartItem.setTotalPrice(product.getPrice() * cartItem.getQuantity());
		
		cart.setGrandTotal(cart.getGrandTotal() + (cartItem.getQuantity() - oldQuantity) * product.getPrice());
		
		assertEquals("Successfully updated the cart item!",true, cartItemDAO.updateCartItem(cartItem));

		//assertEquals("Successfully updated the cart item!",true, cartItemDAO.updateCart(cart));
        */
		
	}
	
	

