package com.example.demo.pizza.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class Pizza implements Serializable {
	private static final long serialVersionUID = 3658750368012077068L;
	private String size;
	private List<Topping> toppings = new ArrayList<>();
}
