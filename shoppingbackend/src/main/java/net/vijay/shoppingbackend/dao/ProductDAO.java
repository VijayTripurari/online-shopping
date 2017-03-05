package net.vijay.shoppingbackend.dao;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import net.vijay.shoppingbackend.dto.Product;

public interface ProductDAO {
	@Transactional
	public void addProduct(Product product);
	@Transactional
	public List<Product> list();
	@Transactional
	public Product getProduct(int id);
	@Transactional
	public void deleteProduct(int id);
	
	@Transactional
	public void updateProduct(Product product);
	
	
	
}
