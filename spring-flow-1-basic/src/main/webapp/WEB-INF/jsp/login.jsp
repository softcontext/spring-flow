<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Web Flow Example</title>
</head>
<body>

	<h2>Please Login</h2>
	<h5>Access Path = http://localhost:8080/loginFlowAccessPath</h5>
	<h5>flowExecutionUrl = ${flowExecutionUrl}</h5>
	<h5>flowExecutionKey = ${flowExecutionKey}</h5>

	<form method="post" action="${flowExecutionUrl}">
		<input type="hidden" name="_eventId" value="performLogin">
		<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
		<table>
			<tr>
				<td>
					User Name
				</td>
				<td>
					<input type="text" name="username" maxlength="40">
				</td>
			</tr>
			<tr>
				<td>
					Password
				</td>
				<td>
					<input type="password" name="password" maxlength="40">
				</td>
			</tr>
			<tr>
				<td>
				</td>
				<td>
					<input type="submit" value="Login" />
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>