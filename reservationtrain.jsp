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
		String trname="";
		
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/project1";
		String username = "root";
		String password = "abdulrahman";
		
		Connection con = DriverManager.getConnection(url,username,password);
		Statement stmt=con.createStatement();
		int tr=Integer.parseInt(request.getParameter("tn"));
		
		String q="SELECT trainname FROM train where trainno= ?";
		PreparedStatement pstmt=con.prepareStatement(q);
		
		pstmt.setInt(1,tr);
		ResultSet rs = pstmt.executeQuery(); 
		if(rs.next()){
			//int i= rs.getInt("trainno");
			trname=rs.getString("trainname");
			//out.println(trname);
		}
		%>
		<form action="reservation.jsp">
		PNR    :<input type="number" name="pnr" value=<%=request.getParameter("pnr") %>><br>
		Name   :<input type="text" name="name" value=<%=request.getParameter("name") %>><br>
		Class  :<select name="class">
			<option value="AC" value=<%=request.getParameter("class") %>>AC</option>
			<option value="SC" value=<%=request.getParameter("class") %>>SC</option>
		</select><br>
		Train Name    :<input type="text" name="trainname" value=<%=trname%>>
		<%
} catch(Exception e){

	e.printStackTrace();
}
%>


Train Number  :<input type="number" name="tn" value=<%=request.getParameter("tn") %>><br>
Phone Number  :<input type="text" name="pn" value=<%=request.getParameter("pn") %>><br>
Date Of Journey:<input type="date" name="doj" value=<%=request.getParameter("doj") %>><br>
From City:<input type="text" name="fc" value=<%=request.getParameter("fc") %>><br>
To City:<input type="text" name="tc" value=<%=request.getParameter("tc") %>>
<br>
<input type="submit" value="submit">
</form> 
</body>
</html>