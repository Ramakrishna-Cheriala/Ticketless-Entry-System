<%@page import="connection.*" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.Class"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<title>Searching</title>
</head>
<body>
<h3 text align="center"><u>Search By mobile or Staff hno</u></h3><br>
<form method="post" action="Searchingofstaff.jsp" align="center">
<input type="text" name="search" placeholder="Please give Mobile Or Hno"><br><br>
<button type="submit" name="save" class="btn btn-primary">Search</button>
</form>
<%
String e="";
e=request.getParameter("search");
Searched1_Staff s=new Searched1_Staff();
if(e!=null){
List<Staff> list=s.search(e);
%>
<br>
<table align="center" style="margin: 0px auto" border=2;>
	<tr>
	<th>Staff ID</th>
	<th>Staff Name</th>
	<th>Mobile</th>
	<th>Designation</th>
	<th>H-NO</th>
	</tr> 
	<%
for(Staff i:list){
	%>
	<tr>
	<td><%=i.staff_id %></td>
	<td><%=i.staff_name %></td>
	<td><%=i.mobile %></td>
	<td><%=i.designation %></td>
	<td><%=i.hno %></td>
	</tr>
	<%
}
}
%>
</table>
</body>
</html>