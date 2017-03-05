package net.vijay.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.vijay.shoppingbackend.dao.CategoryDAO;
import net.vijay.shoppingbackend.dao.ProductDAO;
import net.vijay.shoppingbackend.dto.Category;
import net.vijay.shoppingbackend.dto.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	private Product product;
	private static AnnotationConfigApplicationContext context;
	private static ProductDAO productDAO;

	
	private  List<Product> products = new ArrayList<Product>();
	
	static {
	context = new AnnotationConfigApplicationContext();
	context.scan("net.vijay.shoppingbackend");
	context.refresh();
	
	}
	
		
	@Override
	@Transactional
	public void addProduct(Product product) {
		
	
			
			sessionFactory.getCurrentSession().persist(product);
			
	
	
	}

	@Override
	@Transactional
	public List<Product> list() {
		 products=sessionFactory.getCurrentSession().createQuery("from Product").list();
		   return products;
	}

	@Override
	@Transactional
	public Product getProduct(int id) {
	 return  (Product)sessionFactory.getCurrentSession().get(Product.class, id);
	 
	 
	}

	@Override
	@Transactional
	public void deleteProduct(int id) {
		
		sessionFactory.getCurrentSession().delete(getProduct(id));
		  
	}

	@Override
	@Transactional
	public void updateProduct(Product product)
	{
		sessionFactory.getCurrentSession().update(product);
	}
		
	}
