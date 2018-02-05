package com.example.demo.service;

import org.springframework.stereotype.Service;

import com.example.demo.model.LoginBean;

@Service
public class LoginService {
	
	public String validateUser(LoginBean loginBean) {
		System.out.println("LoginService # validateUser() called.");
		
		String username = loginBean.getUsername();
		String password = loginBean.getPassword();
		
		if (username.equals("user") && password.equals("user")) {
			return "true";
		} else {
			return "false";
		}
	}
	
}
