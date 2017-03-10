
	package net.vijay.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.vijay.shoppingbackend.dao.AddressDAO;

import net.vijay.shoppingbackend.dto.Address;

@Repository("addressDAO")
public class AddressDAOImpl implements AddressDAO {

	@Autowired
	private SessionFactory sessionFactory;
	private Address address;
	
	

	
	private  List<Address> adrs = new ArrayList<Address>();
	

	
		
	

	@Override
	@Transactional
	public List<Address> list() {
		 adrs=sessionFactory.getCurrentSession().createQuery("from Address").list();
		   return adrs;
	}

	@Override
	@Transactional
	public Address getAddress(int id) {
		
	 return  (Address)sessionFactory.getCurrentSession().get(Address.class, id);
	 
	 
	}

	@Override
	@Transactional
	public void deleteAddress(int id) {
		         
		             
		sessionFactory.getCurrentSession().delete(getAddress(id));
		  
	}

	@Override
	@Transactional
	public void updateAddress(Address address)
	{
		sessionFactory.getCurrentSession().update(address);
	}

	
	@Transactional
	public boolean addAddress(Address address) {
		try
		{
		sessionFactory.getCurrentSession().persist(address);
		return true;
		}
		catch(Exception ex)
		{
			return false;
		}
	}
		
	}





