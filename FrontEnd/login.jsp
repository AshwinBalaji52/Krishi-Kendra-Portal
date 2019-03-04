<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Krishi Kendra Login</title>
<link rel="stylesheet" type="text/css" href="login-style.css">
</head>
<body>
	<script>
					alert("${message}");
					alert("${successmessage}");
	</script>

	<form action="loginregister" method="post">
		<div class="loginbox">
			<img src="farm9.jpg" class="avatar">
			<h1>Krishi Kendra</h1>

			<p>Phone Number</p>
			<input type="text" name="phone" placeholder="Phone Number">
			<p>Password</p>
			<input type="password" name="password" placeholder="Enter Password">
			<br><br><input type="submit" name="submit" value="Login">
			<br><a href="registration.jsp">Don't have an account?</a>

		</div>
	</form>

</body>
</head>

</html>