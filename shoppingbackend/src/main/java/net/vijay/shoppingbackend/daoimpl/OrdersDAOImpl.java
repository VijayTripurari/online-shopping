package net.vijay.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Repository;

import net.vijay.shoppingbackend.dao.OrdersDAO;
import net.vijay.shoppingbackend.dao.ProductDAO;
import net.vijay.shoppingbackend.dto.OrderItem;
import net.vijay.shoppingbackend.dto.Orders;
import net.vijay.shoppingbackend.dto.Product;

@Repository("orderDAO")
public class OrdersDAOImpl implements OrdersDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Orders order;
	private static AnnotationConfigApplicationContext context;
	private static OrdersDAO orderDAO;

	
	
	static {
	context = new AnnotationConfigApplicationContext();
	context.scan("net.vijay.shoppingbackend");
	context.refresh();
	
	}
	
	@Override
	public boolean addOrdersEntry(Orders order) {
		
		
		boolean result ;
		try
		{
		
		sessionFactory.getCurrentSession().persist(order);
		  result = true;
				  
		}
		catch(Exception ex)
		{
			result = false;
			
		}
		
		return result;
	}

	@Override
	public boolean getOrdersEntry(int id) {
		
		return false;
	}

	@Override
	public boolean addOrderItemEntry(OrderItem orderItem) {
		boolean result ;
		try
		{
		
		sessionFactory.getCurrentSession().persist(orderItem);
		  result = true;
				  
		}
		catch(Exception ex)
		{
			result = false;
			
		}
		
		return false;
	}

	@Override
	public boolean getOrderItemEntry(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
