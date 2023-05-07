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
Staff id<input type="text" name="staff_id"><br>
<button type="submit" class="btn btn-warning">Update</button>
<%
String staff_id=request.getParameter("staff_id");
session.setAttribute("ok", staff_id);
if(staff_id!=null)
	response.sendRedirect("Updation2.jsp");
%>
</form>
</body>
</html>