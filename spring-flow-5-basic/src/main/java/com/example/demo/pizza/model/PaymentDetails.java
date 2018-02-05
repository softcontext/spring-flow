package com.example.demo.pizza.model;

import java.io.Serializable;

import lombok.Data;

@Data
public class PaymentDetails implements Serializable {
	private static final long serialVersionUID = -374908022767405405L;
	private PaymentType paymentType;
	private String creditCardNumber;
}
