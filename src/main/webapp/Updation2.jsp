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
<%@ page import="connection.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updation</title>
</head>
<body>
<form method=post>
<%
	try{
		String staff_id=session.getAttribute("ok").toString();
		String staff_name=request.getParameter("staff_name");
		String designation=request.getParameter("designation");
		String mobile=request.getParameter("mobile");
		String hno=request.getParameter("hno");
		String zip_code=request.getParameter("zip_code");
		String street=request.getParameter("street");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		//String email=request.getParameter("email");
		Connection conn= Connection_Establish.Establish();
		if(conn!=null)
		{
			Statement stmt=conn.createStatement();
			ResultSet rs1=stmt.executeQuery("select * from staff where staff_id='"+staff_id+"'");
			//ResultSet rs2=stmt.executeQuery("select * from address where hno=(select hno from staff where staff_id='"+staff_id+"')");
			
			if(rs1.next())
			{%>
				<br><br>
				Staff id<input readonly type="text" name="tid" value='<%=rs1.getString("staff_id")%>'/><br>
				Staff Name<input type="text" name="staff_name" value='<%=rs1.getString("staff_name")%>'/><br>
				mobile<input type="text" name="mobile" value='<%=rs1.getString("mobile") %>'/><br>
				designation<input type="text" name="designation" value='<%=rs1.getString("designation")%>'/><br>
				hno<input type="text" name="hno" value='<%=rs1.getString("hno") %>'/><br>
				<button type="submit" class="btn btn-warning">Update</button>
					<a href="Updation2.jsp" class="btn btn-default">Back</a>
					</form>
			<% }
		
			Updt_Staff ob=new Updt_Staff();
			int i=ob.updt_sde(conn, staff_name, designation, street, city, state, hno, mobile, staff_id, zip_code);
			if(i>0){
				out.print("Updated not successfull");
			}
			else
				out.print("Updated successfully");
		}
		else
			out.print("Connection Not Established");
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