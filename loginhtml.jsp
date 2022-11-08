<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="login.jsp">
ID      :<input type="number" name="id"> <br><br>
Password  :<input type="password" name="Password">
<br>
<input type="submit" value="submit">

</form>
<b>New User :</b><br>
<a href="registerhtml.jsp">Register Yourself</a>
</body>
</html>