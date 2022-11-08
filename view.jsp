<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
           <%@ page import="java.util.Random"%>
      <%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<form action="cancellation.jsp">
<table border="1"> 
<tr>
<th>Name</th>
<th>Class</th>
<th>Train No</th>
<th>Phone Number</th>
<th>Date</th>
<th>From</th>
<th>To</th>
<th>PRN</th>
</tr>
<%
 try {
		                	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root","abdulrahman");
							String prn=request.getParameter("prn");
							PreparedStatement stm=connection.prepareStatement("select * from booking where pnr=?");
							stm.setString(1, prn);
							
							
							ResultSet rs=stm.executeQuery();
							
							while(rs.next())
							{ %>
								
								<tr>
								<td><%=rs.getString(1)%></td>
								<td><%=rs.getString(2)%></td>
								<td><%=rs.getInt(3)%></td>
								<td><%=rs.getString(4)%></td>
								<td><%=rs.getString(5)%></td>
								<td><%=rs.getString(6)%></td>
								<td><%=rs.getString(7)%></td>
								<td><%=rs.getInt(8)%></td>
								</tr>
								<%
		}
						
		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}
%>
</table>
<input type="hidden" value=<%=request.getParameter("prn") %> name="prn">
<button type="submit" class="butn button_slide slide_left">Confirm Cancel</button>


</form>
</div>
</body>
</html>