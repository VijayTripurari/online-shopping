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
	public boolean addCategory(Category category) {
		
		try
		{
			
			sessionFactory.getCurrentSession().persist(category);
			return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
		}
	
	}

    
	@Transactional
	public boolean get(int id) {
		 Object o = sessionFactory.getCurrentSession().get(Category.class, id);
		   if(o != null)
		       return true;
		   else
			   return false;
	}


	@Transactional
	public boolean deleteCategory(int id) {
		  int count = sessionFactory.getCurrentSession().createQuery("delete Category where id = :cid").setParameter("cid", id).executeUpdate();
		 if(count != 0)
		  return true;
		 else
		  return false;	 
	}

    
	public boolean updateCategory(int id, String name, String desc) {
	
			 Category employee =  (Category) sessionFactory.getCurrentSession().get(Category.class, id);
          try
          {
                employee.setName(name);
		        employee.setDescription(desc);
		  sessionFactory.getCurrentSession().update(employee);
		    return true;
          }
          catch(Exception e)
          {
        	  return false;
          }
		
		
	}


	
	

}
