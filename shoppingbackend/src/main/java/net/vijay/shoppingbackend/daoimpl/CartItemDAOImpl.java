package net.vijay.shoppingbackend.daoimpl;

import java.util.*;
import org.hibernate.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;



import net.vijay.shoppingbackend.dao.*;
import net.vijay.shoppingbackend.dto.*;

@Repository("cartItemDAO")
public class CartItemDAOImpl implements CartItemDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	private CartItem cartItem;
	private static AnnotationConfigApplicationContext context;
	private static CartItemDAO  cartItemDAO;

	
	private  List<CartItem> cartItems = new ArrayList<CartItem>();
	
	static {
	context = new AnnotationConfigApplicationContext();
	context.scan("net.vijay.shoppingbackend");
	context.refresh();
	
	}
	
	
	@Override
	public CartItem getCartItem(int id) {
		
		return sessionFactory.getCurrentSession().get(CartItem.class, id);
		
		
	}

	@Override
	public List<CartItem> listCartItems(Cart cart) {
		
		List<CartItem> list = sessionFactory.getCurrentSession().createQuery("from CartItem where CART_ID = :id", CartItem.class).setParameter("id", cart.getId()).getResultList();
		return list;
	}

	@Override
	public void addCartItem(CartItem cartItem) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
	
	}

	@Override
	public void updateCartItem(CartItem cartItem) {
		sessionFactory.getCurrentSession().update(cartItem);

	}

	@Override
	public CartItem getCartItemByPid(int pid) {
		  
	return sessionFactory.getCurrentSession().createQuery("from CartItem where PRODUCT_ID = :prdid", CartItem.class).setParameter("prdid", pid).uniqueResult();
	}

	@Override
	public void deleteCartItemByPid(int id) {

		CartItem cartItem = new CartItem();
		cartItem.setId(id);
		sessionFactory.getCurrentSession().delete(cartItem);
		
	}

	@Override
	public void deleteCartItem(CartItem cartItem) {
		sessionFactory.getCurrentSession().delete(cartItem);
		
	}

	@Override
	public void deleteAllCartItems() {
		Query query = sessionFactory.getCurrentSession().createQuery("delete CartItem");
		
		 
		int result = query.executeUpdate();
		System.out.println("no of rows deleted : " + result);
		
	}

	@Override
	public Cart getCartByUserId(int id) {
		return sessionFactory.getCurrentSession().createQuery("from Cart where USER_USERID = :userid", Cart.class).setParameter("userid", id).uniqueResult();
		
	}

}
