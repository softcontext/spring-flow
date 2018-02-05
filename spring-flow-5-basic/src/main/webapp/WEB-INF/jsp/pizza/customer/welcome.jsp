<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PIZZA</title>
</head>
<body>
	
	<h3>Welcome</h3>
	
	<form:form>
		<!-- 흐름실행키는 흐름이 중단되었던 시점을 기억하여 재개하기 위해서 사용한다. -->
		<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey }">
		<input type="text" name="phoneNumber">
		<!-- phoneEntered 이벤트가 발생되고 lookupCustomer로 전이된다. -->
		<input type="submit" name="_eventId_phoneEntered" value="Lookup Customer">
	</form:form>
	
</body>
</html>