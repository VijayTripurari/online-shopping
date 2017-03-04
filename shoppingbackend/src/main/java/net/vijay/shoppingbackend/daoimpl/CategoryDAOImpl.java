package net.vijay.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.vijay.shoppingbackend.dao.CategoryDAO;
import net.vijay.shoppingbackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private static List<Category> categories = new ArrayList<Category>();
	
	static
	{
		
		Category   category1 = new Category();
		
		// category 1\
		
		category1.setId(1);
		category1.setName("Mobile");
		category1.setDescription("Mobile Category");
		
		
		// category 2
		Category   category2 = new Category();
				category2.setId(1);
				category2.setName("Labtop");
				category2.setDescription("Laptop Category");
				
		
		// category 1
				Category   category3 = new Category();
				category3.setId(1);
				category3.setName("Television");
				category3.setDescription("Television Category");
				
		
				
		categories.add(category1);
		categories.add(category2);
		categories.add(category3);
	}
	
	
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}


	@Override
	@Transactional
	public boolean add(Category category) {
		
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

}
