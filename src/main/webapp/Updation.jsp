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
		String tid=session.getAttribute("ok").toString();
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String nationality=request.getParameter("nationality");
		String gender=request.getParameter("gender");
		String id=request.getParameter("id");
		String id_proof=request.getParameter("id_proof");
		String mid=request.getParameter("mid");
		String contact=request.getParameter("contact");
		String email=request.getParameter("email");
		Connection conn= Connection_Establish.Establish();
		if(conn!=null)
		{
			Statement stmt=conn.createStatement();
			ResultSet rs1=stmt.executeQuery("select * from visitor where tid='"+tid+"'");
			if(rs1.next())
			{%>
				<br><br>
				Visitor id<input style="margin-left: 30px"readonly type="text" name="tid" value='<%=rs1.getString("tid")%>'/><br><br>
				Visitor Name<input style="margin-left: 15px" type="text" name="name" value='<%=rs1.getString("name")%>'/><br><br>
				Age<input style="margin-left: 25px" type="text" name="age" value='<%=rs1.getString("age") %>'/><br><br>
				Nationality<input style="margin-left: 30px" type="text" name="nationality" value='<%=rs1.getString("Nationality")%>'/><br><br>
				gender<input style="margin-left: 30px" type="text" name="gender" value='<%=rs1.getString("gender") %>'/><br><br>
				id<input style="margin-left: 30px" type="text" name="id" value='<%=rs1.getString("id") %>'/><br><br>
				id_proof<input style="margin-left: 30px" type="text" name="id_proof" value='<%=rs1.getString("id_proof") %>'/><br><br>
				mid<input readonly style="margin-left: 30px" type="text" name="mid" value='<%=rs1.getString("mid") %>'/><br><br>
				Contact<input style="margin-left: 30px"  type="text" name="contact" value='<%=rs1.getString("contact") %>'/><br><br>
				Email<input style="margin-left: 30px" type="text" name="email" value='<%=rs1.getString("email") %>'/><br><br>
					<button type="submit" class="btn btn-warning">Update</button><br>
					<a href="Updation.jsp" class="btn btn-default">Back</a>
					</form>
			<% }
			Updt ob=new Updt();
			int i=ob.updt_de(conn, name, age, nationality, gender, id, id_proof, contact, email, tid);
			if(i>0){
				out.print("Updated successfully");
			}
			else
				out.print("Updation not successfull");
			//stmt.executeUpdate("update visitors set name='"+name+"',age='"+age+"',nationality='"+nationality+"',gender='"+gender+"',id='"+id+"',id_proof='"+id_proof+"',contact='"+contact+"',email='"+email+"' where tid='"+tid+"'");
			//out.print("Updated successfully");
			//Connection_Establish.closeConnection(conn);
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