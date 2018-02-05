<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PIZZA</title>
</head>
<body>
	
	<h3>Create Pizza</h3>
	
	<form:form commandName="pizza">
		<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey }">
		
		<h5>Size: </h5>
		<table>
			<tr>
				<td></td>
				<td><form:radiobutton path="size" label="Small (12-inch)" value="SMALL"/></td>
			</tr>
			<tr>
				<td></td>
				<td><form:radiobutton path="size" label="Medium (14-inch)" value="MEDIUM"/></td>
			</tr>
			<tr>
				<td></td>
				<td><form:radiobutton path="size" label="Large (16-inch)" value="LARGE" checked="checked" /></td>
			</tr>
			<tr>
				<td></td>
				<td><form:radiobutton path="size" label="Ginormous (20-inch)" value="GINORMOUS"/></td>
			</tr>
		</table>
		
		<h5>Toppings: </h5>
		<table>
			<tr>
				<td></td>
				<td><form:checkboxes path="toppings" items="${toppingsList }" delimiter=" "/></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<!-- 전송되면 size, topping 선택들이 flowScope.pizza 객체에 바인딩된다. -->
					<input type="submit" class="button" name="_eventId_addPizza" value="Continue"/>
					<input type="submit" class="button" name="_eventId_cancel" value="Cancel"/>
				</td>
			</tr>
		</table>
	</form:form>
	
</body>
</html>