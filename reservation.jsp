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
		int pn = Integer.parseInt(request.getParameter("pnr"));
		String pname=request.getParameter("name");
		String cla=request.getParameter("class");
		int tno=Integer.parseInt(request.getParameter("tn"));
		String pno=request.getParameter("pn");
		String dj=request.getParameter("doj");
		String fcity=request.getParameter("fc");
		String tcity=request.getParameter("tc");
		
		String q = "insert into booking(cname,class,trainno,phoneno,dateofjoining,fromcity,tocity,pnr) values(?,?,?,?,?,?,?,?)";
		PreparedStatement stm=con.prepareStatement(q);
	    stm.setString(1, pname);
		stm.setString(2,cla);
		stm.setInt(3,tno);
		stm.setString(4,pno);
		stm.setString(5,dj);
		stm.setString(6,fcity);
		stm.setString(7,tcity);
		stm.setInt(8,pn);
		
		stm.executeUpdate();
		out.println("Sucessfully inserted");
}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>