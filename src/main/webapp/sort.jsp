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
<title>Insert title here</title>
</head>
<body>
<%

Connection conn=Connection_Establish.Establish();
Sort_1 s1 = new Sort_1();
List<Visitor_de> list12=new ArrayList<>();
//List<Staff> list1=new ArrayList<>();
list12=s1.sort_de(conn);


%>
<h3>Un sorted</h3>
<%
for(Visitor_de i:list12){
	out.print(i.name+" "+i.age+" "+i.gender+" "+i.nationality+" "+i.id+" "+i.id_proof
			+" "+i.contact+" "+i.email+" "+i.tid);%> <br> <%
}

SortbyVisitor comp1= new SortbyVisitor();
Collections.sort(list12,comp1);
%>
<h3>Sorted</h3>
<%
for(Visitor_de i:list12){
	out.print(i.name+" "+i.age+" "+i.gender+" "+i.nationality+" "+i.id+" "+i.id_proof
			+" "+i.contact+" "+i.email+" "+i.tid);%> <br> <%
}
%>
</body>
</html>