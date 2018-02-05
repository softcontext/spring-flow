<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CONTAINER</title>
</head>
<body>

	<h3>CONTAINER</h3>

	<p><a href="/modalFlowAccessPath">Launch Flow</a></p>
	
	<c:if test="${param.result eq 'success'}">
		<p class="success">Flow completed with success!</p>
	</c:if>
	
	<c:if test="${param.result eq 'cancel'}">
		<p class="error">Flow ended with cancellation!</p>
	</c:if>

</body>
</html>