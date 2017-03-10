package net.vijay.shoppingbackend.dao;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import net.vijay.shoppingbackend.dto.User;

@Component
public interface UserDAO {
	
	public boolean addUser(User user);
	
	public List<User> list();
	
	public User getUser(int id);
	
	public void deleteUser(int id);
	

	public void updateUser(User user);
	
	
	
}
