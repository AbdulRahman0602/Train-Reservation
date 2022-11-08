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
		int pid=Integer.parseInt(request.getParameter("id"));
		String pass=request.getParameter("Password");
		
		String q="SELECT * FROM registration where id= ? and password= ?";
		PreparedStatement pstmt=con.prepareStatement(q);
		
		pstmt.setInt(1,pid);
		pstmt.setString(2,pass);
		ResultSet rs = pstmt.executeQuery(); 
		if(rs.next()){
			out.println("Login Successfull");%>
			<br>
			<a href="reservationhtml.jsp">Reservation Form</a><br>
			<a href="cancellationhtml.jsp">Cancellation Form</a>   
<% 		}
		else{
			out.println("Login Failed");
		}
} catch(Exception e){

	e.printStackTrace();
}
%> 
</body>
</html>