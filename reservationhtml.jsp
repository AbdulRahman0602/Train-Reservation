<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="reservationtrain.jsp">
PNR    : <input type="number" name="pnr"> <br>
Name   :<input type="text" name="name"> <br>
Class  :<select name=class>
	<option value="AC">AC</option>
	<option value="SC">SC</option>
</select><br>
Train Number  :<input type="number" name="tn"><br>
Phone Number  :<input type="text" name="pn"><br>
Date Of Journey:<input type="date" name="doj"><br>
From City:<input type="text" name="fc"><br>
To City:<input type="text" name="tc">
<br>
<input type="submit" value="submit">
</form>

</body>
</html>