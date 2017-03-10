package net.vijay.shoppingbackend.dao;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import net.vijay.shoppingbackend.dto.Address;

@Component
public interface AddressDAO {
	
	@Transactional
	public boolean addAddress(Address address);
	@Transactional
	public List<Address> list();
	@Transactional
	public Address getAddress(int id);
	@Transactional
	public void deleteAddress(int id);
	
	@Transactional
	public void updateAddress(Address product);
	

}
