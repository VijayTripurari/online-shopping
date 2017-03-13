package net.vijay.shoppingbackend.dao;

import java.util.*;

import org.springframework.transaction.annotation.Transactional;

import net.vijay.shoppingbackend.dto.Cart;
import net.vijay.shoppingbackend.dto.CartItem;

public interface CartItemDAO {
	
	@Transactional
	public CartItem getCartItem(int id);
	
	@Transactional
	public List<CartItem> listCartItems(Cart cart);
	
	@Transactional
	public void addCartItem(CartItem cartItem);
	
	@Transactional
	public void updateCartItem(CartItem cartItem);
	
	@Transactional
	public void deleteCartItemByPid(int id);
	
	@Transactional
	public void deleteCartItem(CartItem cartItem);
	
	@Transactional
	public CartItem getCartItemByPid(int pid);
	
	@Transactional
	public void deleteAllCartItems();
	
	@Transactional 
	public Cart getCartByUserId(int id);
	
	
	

}
