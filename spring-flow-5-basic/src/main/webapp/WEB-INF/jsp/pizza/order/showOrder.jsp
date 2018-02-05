<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PIZZA</title>
</head>
<body>
	
	<h3>Show Order</h3>
	<hr width="70%"/>
	
	<h5>Deliver to:</h5>
	<ul>
		<li>
			Phone Number: ${order.customer.phoneNumber}
		</li>
		<li>
			Customer Name: ${order.customer.name}
		</li>
		<li>
			Customer Address: ${order.customer.address}
		</li>
		<li>
			Zip Code: ${order.customer.zipCode}
		</li>
	</ul>
	<hr width="70%"/>
	
	<h5>Order total: <fmt:formatNumber type="currency" value="${order.total}"/></h5>
	<hr width="70%"/>
	
	<h5>Pizzas:</h5>
	<c:if test="${fn:length(order.pizzas) eq 0}">
		<ul>
			<li>
				No pizzas in this order.
			</li>
		</ul>
	</c:if>
	<c:if test="${fn:length(order.pizzas) ne 0}">
		<c:forEach items="${order.pizzas}" var="pizza">
		<ul>
			<li>
				${pizza.size} : 
				<c:forEach items="${pizza.toppings}" var="topping">
					<c:out value="${topping}" />,
				</c:forEach>
			</li>
		</ul>
		</c:forEach>
	</c:if>
	<hr width="70%"/>
	<br />
	
	<form:form action="${flowExecutionUrl}" method="POST">
		<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
		<button id="createPizza" type="submit" name="_eventId_createPizza">Create Pizza</button>
		<button id="checkout" type="submit" name="_eventId_checkout">Check out</button>
		<button id="cancel" type="submit" name="_eventId_cancel">Cancel</button>
	</form:form>
	
</body>
</html>