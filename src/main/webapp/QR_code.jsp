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
<%@page import="connection.Dyn_QR" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post">
<input type="text" name="text" id="text" placeholder="email">
<input type="submit" value="submit">
</form>

<%

String tid=request.getParameter("text");
out.println(tid);

out.println(Dyn_QR.s(tid));
%>

</body>
</html>