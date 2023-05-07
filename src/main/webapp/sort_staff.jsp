<%@page import="connection.*" %>
<%@page import="connection.Connection_Establish" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.Class"%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Sorting</title>
</head>
<body>
<%

Connection conn=Connection_Establish.Establish();
Sort_2 s2 = new Sort_2();
List<Staff> list12=new ArrayList<>();
list12=s2.sort_sde(conn);


%>
<h3 text align="center"><u>Unsorted</u></h3>
<table align="center" style="margin: 0px auto "border=2;>
	<tr>
	<th>Staff Name</th>
	<th>Designation</th>
	<th>House No</th>
	<th>Mobile No</th>
	<th>Staff Id</th>
	</tr> 
<%
for(Staff i:list12){
	%>
	<tr>
	<td><%=i.staff_name %></td>
	<td><%=i.designation %></td>
	<td><%=i.hno %></td>
	<td><%=i.mobile %></td>
	<td><%=i.staff_id %></td>
	</tr>
	<%
}
%>
</table><br><br>
<%

SortbyStaff comp1= new SortbyStaff();
Collections.sort(list12,comp1);
%>
<h3 text align="center"><u>Sorted</u></h3>
<table align="center" style="margin: 0px auto" border=2;>
	<tr>
	<th>Staff Name</th>
	<th>Designation</th>
	<th>House No</th>
	<th>Mobile No</th>
	<th>Staff Id</th>
	</tr> 
<%
for(Staff i:list12){
	%>
	<tr>
	<td><%=i.staff_name %></td>
	<td><%=i.designation %></td>
	<td><%=i.hno %></td>
	<td><%=i.mobile %></td>
	<td><%=i.staff_id %></td>
	</tr>
	<%
}
%>
</table><br><br>

</body>
</html>