<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PIZZA</title>
</head>
<body>
	
	<h3>Take Payment</h3>
	
	<form:form commandName="paymentDetails" name="paymentForm">
		<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey }">
		
		<h5>Payment Method: </h5>
		<table>
			<tr>
				<td>
					<form:radiobutton path="paymentType" value="CASH" label="Cash (taken at delivery)" onclick="hideCreditCardField()" checked="checked"/>
					<br/>
					<form:radiobutton path="paymentType" value="CHECK" label="Check (taken at delivery)" onclick="hideCreditCardField()"/>
					<br/>
					<form:radiobutton path="paymentType" value="CREDIT_CARD" label="Credit Card:" onclick="showCreditCardField()"/>
				</td>
			</tr>
			<tr>
				<td>
					<form:input path="creditCardNumber" cssStyle="visibility:hidden;"/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" class="button" name="_eventId_paymentSubmitted" value="Payment Submit"/>
					<input type="submit" class="button" name="_eventId_cancel" value="Cancel"/>
				</td>
			</tr>
		</table>
	</form:form>
	
	<script type="text/javascript">
		function showCreditCardField() {
	      document.paymentForm.creditCardNumber.style.visibility = 'visible';
	    }
	    function hideCreditCardField() {
	      document.paymentForm.creditCardNumber.style.visibility = 'hidden';
	    }  
	</script>
</body>
</html>