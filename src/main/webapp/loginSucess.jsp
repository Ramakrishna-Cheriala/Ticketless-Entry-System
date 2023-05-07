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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

@import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap");
* {
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  background: #272727;
  font-family: "Montserrat", sans-serif;
}

.navMenu {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

.navMenu a {
  color: #f6f4e6;
  text-decoration: none;
  font-size: 1.2em;
  text-transform: uppercase;
  font-weight: 500;
  display: inline-block;
  width: 80px;
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}

.navMenu a:hover {
  color: #fddb3a;
}

</style>
<body>
<br><br>
<h2 text align="center" >Welcome </h2><br>
<p text align="center"style="color:yellow">
<% 
String str=(String)session.getAttribute("msg1");
out.println(str);
%>
</p>
<br><br>
<hr size="8" width="100%" color="white">  
    <nav class="navMenu">
    
    <ul>
     <li><a href="upd2.jsp">Updation </a><br><br></li>
     <li><a href="StaffReg1.jsp">Registration </a><br><br></li>
     <li><a href="Searchingofstaff.jsp">Searching</a><br><br></li>
     <li><a href="sort_staff.jsp">Sort </a><br><br></li>
     <li><a href="delete.jsp">Delete</a></li>
   </ul>
      <div class="dot"></div>
    </nav>
</body>
</html>