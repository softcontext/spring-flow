<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STEP 1</title>
</head>
<body>

	<h3>STEP 1</h3>

	<form action="${flowExecutionUrl}" method="POST">
		<button id="cancel" type="submit" name="_eventId_cancel">Cancel</button>
		<button id="next" type="submit" name="_eventId_next">Next ▶</button>
	</form>
	
</body>
</html>