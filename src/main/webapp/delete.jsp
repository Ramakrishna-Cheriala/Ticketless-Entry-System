<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.Class" %>  
<%@ page import ="java.lang.*" %>
<%@ page import="connection.Connection_Establish" %>
<%@ page import="connection.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<title>Delete Data</title>
</head>
<body>
<form action="delete.jsp">
<table>
<tr>
<td>Enter ID To Delete</td>
<td><input type="text" name="staff_id"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" name="ok" value="Delete"/></td>
</tr>
</table>
</form>

<%
String un=request.getParameter("ok");
if(un!=null)
{
	Connection_Establish obj=new Connection_Establish();
	Connection conn1=obj.Establish();
	String id = request.getParameter("staff_id");
	//String hno = request.getParameter("h_no");
    DeleteRecord delobj=new DeleteRecord();
    int i=delobj.dele(conn1,id);
	if(i!=0)
	{
		out.println("There is a problem in Deleting Record."); 
		out.print("Check Manually in your Database"); 
	}
	else
		out.print("Record Deleted Successfully");
}

%>

</body>
</html>