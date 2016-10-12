package com.niit.shoppingcart.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.User;
@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public UserDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
		}
	 @Transactional
	public boolean save(User user){
		try{
			sessionFactory.getCurrentSession().save(user);
			return true;
		}catch (HibernateException e){
			//TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	 @Transactional
	public boolean update(User user){
		try{
			sessionFactory.getCurrentSession().update(user);
			return true;
		}
		catch(HibernateException e){
			//TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	 }
	 @Transactional
	 public void delete(int id){
		 User UserToDelete = new User();
		 UserToDelete.setId(id);
		 sessionFactory.getCurrentSession().delete(UserToDelete);
		 
	 }
	 @Transactional
	public User get(int id){
		String hql ="from Login where id="+"'"+id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<User> list = query.list();
		if(list == null){
			return null;
		}
		else
		{
			return list.get(0);
		}
	}
	 @Transactional
	public List<User> list(){
		
		String hql= "from Login";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}
	

}
