<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log Out</title>
</head>

<body>


<%

response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); //HTTP 1.1 Prevent back button to redirect to secure page by clearing cache memory (Browser Oriented code)
//response.setHeader("Pragma","no-cache"); HTTP 1.0
//response.setHeader("Expires","0"); Proxy Server


session.invalidate();
response.sendRedirect("login.jsp");
 %>
 </body>
</html>