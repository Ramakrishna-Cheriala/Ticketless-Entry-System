<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.*" %>
<%@page import="connection.Connection_Establish" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert data</title>
</head>
<body>
<%
String sname=request.getParameter("sname");
String smobile=request.getParameter("smobile");
String sdes=request.getParameter("des");
String hno=request.getParameter("hno");
String zip=request.getParameter("zip");
String street=request.getParameter("street");
String citi=request.getParameter("city");
String stat=request.getParameter("state");

try
{
	%>
	<%! Connection_Establish obj = new Connection_Establish();%>
	<% 
	Connection conn=obj.Establish();
	Statement stmt=conn.createStatement();
	stmt = conn.createStatement();
	//stmt.executeUpdate("insert into staff(staff_name,mobile,designation,zip_code) values('"+sname+"','"+smobile+"','"+sdes+"','"+szip+"')");
	//stmt.executeUpdate("insert into address(zip_code,street,city,state) values('"+Street+"','"+city+"','"+state+"')");
	if(true)
	{
		String sql = "call GetValues1('"+zip+"','"+hno+"','"+street+"','"+citi+"','"+stat+"','"+sname+"','"+smobile+"','"+sdes+"')";
		stmt.executeUpdate(sql);
		out.print("data inserted successfully");
	}
}
catch(SQLException e)
{
	out.print(e);
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>