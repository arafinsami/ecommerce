package com.ecommerce.service;

import java.util.List;

import javax.enterprise.context.Dependent;
import javax.inject.Inject;

import com.ecommerce.dao.UserDao;
import com.ecommerce.entity.User;

@Dependent
public class UserService {

	@Inject
	private UserDao userDao;

	public List<User> getAllUser() {
		List<User> users = userDao.getAllUser();
		return users;
	}
}
