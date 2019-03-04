<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" type="text/css" href="home-style.css">
<script>
 alert("Hello ${message}");
</script>
</head>
<body>
<%
//Prevent back button to redirect to secure page by clearing cache memory (Browser Oriented code)
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); 
%>

	<div class="veggies">
		<a href=" http://market.todaypricerates.com/vegetables-daily-price "><img src="veggies.jpg" height="220px" width="220px"/></a>
		<p> Vegetables </p>
	</div>
	
	<div class="fruits">
		<a href=" http://market.todaypricerates.com/fruits-daily-price  "><img src="fruits.jpg" height="220px" width="220px"/></a>
		<p> Fruits </p>
	</div>
	
	<div class="lentils">
		<a href="http://agmarknet.gov.in/"><img src="pulses.jpg" height="220px" width="220px"/></a>
		<p> Pulses & Grains </p>
	</div>

<header>
        
    <div class="main-class"> 
	<ul>
		<li><a href="https://archive.india.gov.in/citizen/agriculture/agri_cont_schemes.php"> Agriculture Govt. Schemes </a></li>
		<li><a href="https://www.sbi.co.in/portal/web/agriculture-banking/agricultural-banking"> Less % Interest Loans  </a></li>
        <li><a href="https://news.google.com/search?q=agriculture%20india&hl=hi&gl=IN&ceid=IN%3Ahi"> News </a></li>
		<li><a href="https://mail.google.com/mail/u/0/?view=cm&fs=1&tf=1&to=bashwin52@gmail.com"> Mail Us </a></li>
		<li><a href="logout.jsp"> Log Out </a></li>
		
    </ul>   
	
    </div>
 </header>
	


</body>
</html>