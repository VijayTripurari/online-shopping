package net.vijay.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.vijay.shoppingbackend.dao.ProductDAO;
import net.vijay.shoppingbackend.dao.UserDAO;
import net.vijay.shoppingbackend.dto.Address;
import net.vijay.shoppingbackend.dto.Product;
import net.vijay.shoppingbackend.dto.User;
@Transactional
@Repository("userDAO")
public class UserDAOImple implements UserDAO {


	@Autowired
	private SessionFactory sessionFactory;
	
	private User user;
	private static AnnotationConfigApplicationContext context;
	private static UserDAO  userDAO;

	
	private List<User> users = new ArrayList<User>();
	
	
	
	@Override
	
	public boolean addUser(User user) {
		try {
		sessionFactory.getCurrentSession().persist(user);
		 return true;
		}
		catch(Exception ex)
		{
			return false;
		}
		 
	}

	@Override
	@Transactional
	public List<User> list() {
		 users=sessionFactory.getCurrentSession().createQuery("from User").list();
		   return users;
	}

	@Override
	@Transactional
	public User getUser(int id) {
		return  (User)sessionFactory.getCurrentSession().get(User.class, id);
		
	}

	@Override
	@Transactional
	public void deleteUser(int id) {
		sessionFactory.getCurrentSession().delete(getUser(id));

	}

	@Override
	@Transactional
	public void updateUser(User user) {
		sessionFactory.getCurrentSession().update(user);

	}

	@Override
	public User getUserByUsername(String email1) {
		Query q=sessionFactory.getCurrentSession().createQuery("FROM User WHERE email=:abc");
		q.setParameter("abc", email1);
	User user=(User)q.getSingleResult();
	return user;
	
		}

}
