package com.example.demo.pizza.service;

import org.springframework.stereotype.Service;

import com.example.demo.pizza.model.Customer;

@Service
public class CustomerService {
	
	public Customer lookupCustomer(String phoneNumber) throws CustomerNotFoundException {
		if ("01012341234".equals(phoneNumber)) {
			Customer customer = new Customer();
			customer.setId(1);
			customer.setName("Tom Cruise");
			customer.setAddress("1004 West Coast Rd");
			customer.setPhoneNumber(phoneNumber);
			customer.setZipCode("12345");
			return customer;
		} else {
			throw new CustomerNotFoundException();
		}
	}
	
}
