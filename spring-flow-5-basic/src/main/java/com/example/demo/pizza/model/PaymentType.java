package com.example.demo.pizza.model;

import static org.apache.commons.lang3.text.WordUtils.capitalizeFully;

import java.util.Arrays;
import java.util.List;

public enum PaymentType {
	CASH, CHECK, CREDIT_CARD;

	public static List<PaymentType> asList() {
		PaymentType[] all = PaymentType.values();
		return Arrays.asList(all);
	}

	@Override
	public String toString() {
		return capitalizeFully(name().replace('_', ' '));
	}
}