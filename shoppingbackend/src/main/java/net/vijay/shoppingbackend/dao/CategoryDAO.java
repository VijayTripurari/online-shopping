package net.vijay.shoppingbackend.dao;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import net.vijay.shoppingbackend.dto.Category;

public interface CategoryDAO {
	@Transactional
	public boolean addCategory(Category category);
	@Transactional
	public List<Category> list();
	@Transactional
	public boolean get(int id);
	@Transactional
	public boolean deleteCategory(int id);
	
	@Transactional
	public boolean updateCategory(int id , String name , String desc);
	
}
