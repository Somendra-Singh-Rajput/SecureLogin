<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Details</title>
</head>
<body>

<%

response.setHeader("Cache-Control","no-cacvhe,no-store,must-revalidate");// HTTP 1.1

response.setHeader("Pragma", "no-cache"); // HTTP 1.0

response.setHeader("Expires","0"); //Proxies

if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
}
%>

<h2 style="text-align:center">Welcome to NightlabCoders</h2>
<hr>

<h2>Company Name : NightlabCoders Pvt Ltd.</h2>
<h3>Company established in 2017</h3>
<h4>Number of employees are 5</h4>
<h4>Company Type : IT services</h4>

<br>
<a href="welcome.jsp">Go To HomePage</a>
</body>
</html>