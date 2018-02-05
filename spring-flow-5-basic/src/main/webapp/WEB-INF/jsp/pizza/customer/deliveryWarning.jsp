<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PIZZA</title>
</head>
<body>
	
	<h3>Delivery Warning</h3>
	
	<div>
		The address is outside of our delivery area. 
		You may still place the order, but you will need to pick it up yourself.
	</div>
	
	<a href="${flowExecutionUrl }&_eventId=accept">Continue, I'll pick up the order.</a> 
	<a href="${flowExecutionUrl }&_eventId=cancel">Nevermind</a>
	
</body>
</html>