<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PIZZA</title>
</head>
<body>
	
	<h3>Registration</h3>
	
	<form:form commandName="customer">
		<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey }">
		<table>
			<tr>
				<td>Phone number</td>
				<td><form:input path="phoneNumber"/></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><form:input path="address"/></td>
			</tr>
			<tr>
				<td>Zip Code</td>
				<td><form:input path="zipCode"/></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="submit" name="_eventId_submit" value="Submit" />
					<input type="submit" name="_eventId_cancel" value="Cancel" />
				</td>
			</tr>
		</table>
	</form:form>
	
</body>
</html>