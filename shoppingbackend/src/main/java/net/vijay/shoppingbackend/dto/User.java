package net.vijay.shoppingbackend.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotBlank;

@Entity
public class User implements Serializable {

	
	private static final long serialVersionUID = -4906912674192274404L;


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;

	@NotBlank(message = "Please enter first name!")
	private String userName;

	private boolean enabled = true;

	private String password;
	@NotBlank(message = "Please enter first name!")	
	private String email;

	@NotBlank(message = "Please enter first name!")
	private String phoneNo;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	private String role;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "user",fetch = FetchType.EAGER)
	private Set<Address> addressList = new HashSet<Address>();
	
	@OneToOne(cascade = CascadeType.ALL, mappedBy = "user", fetch = FetchType.EAGER)
    private Cart cart;
	
	

	

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getRole() {
		return role;
	}

	public Set<Address> getAddressList() {
		return addressList;
	}

	public void setAddressList(Set<Address> addressList) {
		this.addressList = addressList;
	}

	public Cart getCart() {
	
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", enabled=" + enabled + ", email=" + email
				+ ", phoneNo=" + phoneNo + ", role=" + role + "]";
	}

	
}
