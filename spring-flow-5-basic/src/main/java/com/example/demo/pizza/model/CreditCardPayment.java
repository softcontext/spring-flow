package com.example.demo.pizza.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
public class CreditCardPayment extends Payment {
	private static final long serialVersionUID = 1L;
	private String authorization;

	public String toString() {
		return "CREDIT:  $" + getAmount() + " ; AUTH: " + authorization;
	}
}
