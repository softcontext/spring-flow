package com.example.demo.pizza.flow;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.pizza.model.CashOrCheckPayment;
import com.example.demo.pizza.model.CreditCardPayment;
import com.example.demo.pizza.model.Customer;
import com.example.demo.pizza.model.Order;
import com.example.demo.pizza.model.Payment;
import com.example.demo.pizza.model.PaymentDetails;
import com.example.demo.pizza.model.PaymentType;
import com.example.demo.pizza.service.CustomerNotFoundException;
import com.example.demo.pizza.service.CustomerService;

@Component
public class PizzaFlowActions {
	private static final Logger LOGGER = LoggerFactory.getLogger(PizzaFlowActions.class);

	@Autowired
	private CustomerService customerService;

//	<evaluate expression="pizzaFlowActions.lookupCustomer(requestParameters.phoneNumber)" result="customer"></evaluate>
	public Customer lookupCustomer(String phoneNumber) throws CustomerNotFoundException {
		Customer customer = customerService.lookupCustomer(phoneNumber);
		if (customer != null) {
			return customer;
		} else {
			throw new CustomerNotFoundException();
		}
	}

//	<if test="pizzaFlowActions.checkDeliveryArea(customer.zipCode)" 
//		then="addCustomer"
//		else="deliveryWarning" />
	public boolean checkDeliveryArea(String zipCode) {
		LOGGER.warn("TODO: Flesh out the checkDeliveryArea() method.");
		return "12345".equals(zipCode);
	}

//	<evaluate expression="pizzaFlowActions.addCustomer(customer)"></evaluate>
	public void addCustomer(Customer customer) {
		LOGGER.warn("TODO: Flesh out the addCustomer() method.");
	}

//	<evaluate expression="pizzaFlowActions.verifyPayment(flowScope.paymentDetails)" result="order.payment"></evaluate>
	public Payment verifyPayment(PaymentDetails paymentDetails) {
		Payment payment = null;
		if (paymentDetails.getPaymentType() == PaymentType.CREDIT_CARD) {
			payment = new CreditCardPayment();
		} else {
			payment = new CashOrCheckPayment();
		}

		return payment;
	}

//	<evaluate expression="pizzaFlowActions.saveOrder(order)"></evaluate>
	public void saveOrder(Order order) {
		LOGGER.warn("TODO: Flesh out the saveOrder() method.");
	}

}
