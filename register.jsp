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
<%
try{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/project1";
		String username = "root";
		String password = "abdulrahman";
		
		Connection con = DriverManager.getConnection(url,username,password);
		Statement stmt=con.createStatement();
		int pid=Integer.parseInt(request.getParameter("Loginid"));
		String pass=request.getParameter("Password");
		
		String q = "insert into registration(id,password) values(?,?)";
		PreparedStatement stm=con.prepareStatement(q);
	    stm.setInt(1, pid);
		stm.setString(2,pass);
		stm.executeUpdate();
		out.println("You have been Registered Successfully");
}
catch(Exception e){
	e.printStackTrace();
}
%>
		
</body>
</html>