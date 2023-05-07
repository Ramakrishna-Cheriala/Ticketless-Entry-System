<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="java.sql.*" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="login.css">
</head>
<style>

.content{
width: 100%;
margin: auto;
}
html{
height: 100%;

}

body{
    line-height: 2;
    margin: 0;
    width: 100%;
    min-height: 100%;
   	display: flex;
   	align-items:center;
   	justify-content:center;
   	background-repeat: no-repeat;
    background-image: url("images/background.jpg");
}




.box{
	width: auto;
	text-align: center;
	border: 3px solid black;
	padding: 20px 100px 20px 100px;
	background-color: white;
}

input[type=text],input[type=password]{
	border: none;
	border-bottom: 2px solid black;
	outline: none;
	width: 100%;
	
}
input[type=submit],input[type=reset]{
	padding: 4px;
	margin: 4px;
}

h1{
	font-size: 30px;
	}
	


</style>
<body>



<form method="post">
	<div class="box">
		<h1 style="text-align: center">Login</h1>
		
			<input type="text" name="userid" placeholder="Username" required/><br>
			<input type="password" name="password" placeholder="Password" required/><br><br>
			<input type="submit" value="Login">
			<input type="reset" value="Reset" /><br>
			New User Register here <a href="Registration.jsp">Signup</a>
	
	
	<%
		String userid=request.getParameter("userid"); 
		String password=request.getParameter("password");
		session.setAttribute("msg1",userid );
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticketless", "root", "Sreyas@2002");
		Statement st=conn.createStatement(); 
		ResultSet rs = st.executeQuery("select * from login where un='"+userid+"' and pwd='"+password+"'");
		if(userid!=null && password!=null){
			try{
				if(rs.next()) { 
					response.sendRedirect("loginSucess.jsp"); 
				} 
				else{
					out.println("<p style='color:red'>Invalid Username or Password!!</p><br>");
				}
			}
			catch(Exception e){
			out.println(e);
			}
		}
		
		
		%>
</div>
</form>

</body>
</html>