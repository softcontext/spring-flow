package com.example.demo.pizza.model;

import java.io.Serializable;

import lombok.Data;

@Data
public class Customer implements Serializable {
	private static final long serialVersionUID = 5473934147386994532L;
	private Integer id;
	private String phoneNumber;
	private String name;
	private String address;
	private String zipCode;
}
