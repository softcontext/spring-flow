package com.example.demo.pizza.service;

public class CustomerNotFoundException extends Exception {
	private static final long serialVersionUID = 4079950714748206373L;

	public CustomerNotFoundException() {
		super("Customer Not Found Exception");
	}

	public CustomerNotFoundException(String message) {
		super(message);
	}
}
