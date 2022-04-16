package com.ecommerce.dao;

import java.util.List;

import javax.annotation.ManagedBean;
import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.ecommerce.entity.User;
import com.ecommerce.utils.JPAUtil;

@ManagedBean
public class UserDao {

	public List<User> getAllUser() {
		EntityManager entityManager = JPAUtil.getEntityManager();
		Query query = entityManager.createQuery("SELECT e FROM User e");
		List<User> users = query.getResultList();
		return users;
	}

}
