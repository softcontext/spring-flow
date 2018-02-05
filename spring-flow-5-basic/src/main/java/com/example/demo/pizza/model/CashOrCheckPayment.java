package com.example.demo.pizza.model;

public class CashOrCheckPayment extends Payment {
	private static final long serialVersionUID = 1L;

	public String toString() {
		return "CASH or CHECK:  $" + getAmount();
	}
}
