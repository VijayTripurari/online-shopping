package net.vijay.shoppingbackend.dao;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import net.vijay.shoppingbackend.dto.Category;
import net.vijay.shoppingbackend.dto.Product;

public interface CategoryDAO {
	@Transactional
	public void addCategory(Category category);
	@Transactional
	public List<Category> list();
	@Transactional
	public Category getCategory(int id);
	@Transactional
	public void deleteCategory(int id);
	
	@Transactional
	public void updateCategory(Category category);
	
}
