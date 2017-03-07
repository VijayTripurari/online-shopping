package net.vijay.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.vijay.shoppingbackend.dao.CategoryDAO;
import net.vijay.shoppingbackend.dto.Category;
import net.vijay.shoppingbackend.dto.Product;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	private Category category;
	private static AnnotationConfigApplicationContext context;
	private static CategoryDAO categoryDAO;

	
	private  List<Category> categories = new ArrayList<Category>();
	
	static {
	context = new AnnotationConfigApplicationContext();
	context.scan("net.vijay.shoppingbackend");
	context.refresh();
	
	}
	
	

	
	
	@Override
	@Transactional
	public List<Category>  list() {
	        categories = sessionFactory.getCurrentSession().createQuery("from Category").list();
	    return categories;
	
	}


	@Override
	@Transactional
	public void addCategory(Category category) {
		
		
			
			sessionFactory.getCurrentSession().persist(category);
		
	
	}

    
	@Transactional
	public Category getCategory(int id) {
		 return  (Category)sessionFactory.getCurrentSession().get(Category.class, id);
		 
	}


	@Transactional
	public void deleteCategory(int id) {
		sessionFactory.getCurrentSession().delete(getCategory(id));
		
	}

    
	public void updateCategory(Category category) {
	
		sessionFactory.getCurrentSession().persist(category);
		
		
	}


	
	

}
