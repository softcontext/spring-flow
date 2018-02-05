package com.example.demo.pizza.model;

import static org.apache.commons.lang3.text.WordUtils.capitalizeFully;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

public enum Topping implements Serializable {

	PEPPERONI, SAUSAGE, MUSHROOM, PINEAPPLE, TOMATO, ONION;

	public static List<Topping> asList() {
		Topping[] all = Topping.values();
		return Arrays.asList(all);
	}

	@Override
	public String toString() {
		return capitalizeFully(name().replace('_', ' '));
	}
}
