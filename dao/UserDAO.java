package com.niit.shoppingcart.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.model.User;
@Repository

public interface UserDAO {
	
	public boolean save(User user);
	
	public boolean update(User user);
	
	public void delete(int id);
	
	public User get(int id);
	
	public List<User> list();
}
