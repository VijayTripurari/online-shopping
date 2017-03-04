package net.vijay.shoppingbackend.dao;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import net.vijay.shoppingbackend.dto.Category;

public interface CategoryDAO {
	@Transactional
	public boolean add(Category category);
	public List<Category> list();

}
