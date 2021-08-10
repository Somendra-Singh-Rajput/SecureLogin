<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to NightlabCoders</title>
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

<h2 style="text-align:center">Welcome to NightlabCoders</h2> ${username} 
<hr>

<iframe width="560" height="315" src="https://www.youtube.com/embed/mVxMqmeeLXc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<br>
<a href="details.jsp">View Details</a>
<br><br>
<form action="Logout">
<input type="submit" value="Logout">
</form>
</body>
</html>