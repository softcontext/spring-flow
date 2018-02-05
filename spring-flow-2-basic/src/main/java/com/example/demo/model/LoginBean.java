package com.example.demo.model;

import java.io.Serializable;

import lombok.Data;

@Data
public class LoginBean implements Serializable {
	private static final long serialVersionUID = -8804444044734162799L;
	private String username;
	private String password;
}
