package net.vijay.shoppingbackend.dao;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import net.vijay.shoppingbackend.dto.Product;
import net.vijay.shoppingbackend.dto.*;

public interface OrdersDAO {

	public boolean addOrdersEntry(Orders order);
	public boolean getOrdersEntry(int id);
	boolean addOrderItemEntry(OrderItem orderItem);
	public boolean getOrderItemEntry(int id);
	
	
	
	
	
	
}
