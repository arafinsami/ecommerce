package com.ecommerce.helper;

import java.io.IOException;
import java.util.List;

import javax.annotation.ManagedBean;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.entity.User;
import com.ecommerce.service.UserService;

@ManagedBean
public class UserHelper {

	@Inject
	private UserService userService;

	public void getAllUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<User> lists = userService.getAllUser();
		request.setAttribute("users", lists);
		RequestDispatcher dispatcher = request.getRequestDispatcher("pages/index.jsp");
		dispatcher.forward(request, response);
	}
}
