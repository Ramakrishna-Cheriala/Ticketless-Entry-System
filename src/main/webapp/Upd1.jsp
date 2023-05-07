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
Visitor id<input type="text" name="tid"><br>
<button type="submit" class="btn btn-warning">Update</button>
<%
String tid=request.getParameter("tid");
session.setAttribute("ok", tid);
if(tid!=null)
	response.sendRedirect("Updation.jsp");
%>
</form>
</body>
</html>