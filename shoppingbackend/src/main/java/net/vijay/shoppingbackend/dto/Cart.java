package net.vijay.shoppingbackend.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Cart implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8696961903109270296L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@OneToOne(cascade = CascadeType.PERSIST)
	private User user;
	
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy="cart", fetch = FetchType.EAGER)
	private List<CartItem> cartItems = new ArrayList<>();
		
	private int cartItemsCount;

	private double grandTotal;


	public int getCartItemsCount() {
		return cartItemsCount;
	}

	public void setCartItemsCount(int cartItemsCount) {
		this.cartItemsCount = cartItemsCount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<CartItem> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}


	
	@Override
	public String toString() {
		return "Cart [id=" + id + ", cartItemsCount=" + cartItemsCount + ", grandTotal=" + grandTotal + "]";
	}
	
	
	
	
}
