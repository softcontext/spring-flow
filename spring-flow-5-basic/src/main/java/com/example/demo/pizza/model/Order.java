package com.example.demo.pizza.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class Order implements Serializable {
	private static final long serialVersionUID = -6493500490881443970L;
	
	private Customer customer = new Customer();
	private List<Pizza> pizzas = new ArrayList<>();
	private Payment payment;
	
	public void addPizza(Pizza pizza) {
		pizzas.add(pizza);
	}
	
	public int getTotal() {
		return pizzas.size()*10000;
	}
	
}
