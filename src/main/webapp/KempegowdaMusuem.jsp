<%@page import="javax.swing.text.Document"%>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.time.format.DateTimeFormatter" %>  
<%@ page import ="java.time.LocalDateTime" %>
<%@ page import ="java.lang.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Kempegowda Muesuem</title>
<link rel="stylesheet" href="places.css">

</head>
<body>

<form method="post">
<%String mid="KEMGOWDA";
String price="47";
session.setAttribute("price", price);
session.setAttribute("mid", mid);
int p=Integer.parseInt(price);
int nri=p*5;
session.setAttribute("nri", nri);%>
<div class="abc">



<div class="row1">
<div class="col-12"><h1>Kempegowda Muesuem</h1></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide" alt="Kempegowda Muesuem" src="images/KempegowdaMuesuem.jpg" width="100%" height="500px">
<img class="slide" alt="Kempegowda Muesuem" src="images/KempegowdaMuesuem1.jpg" width="100%" height="500px">
<img class="slide" alt="Kempegowda Muesuem" src="images/KempegowdaMuesuem2.jpg" width="100%" height="500px">
</div>
<script type="text/javascript">
var myIndex1 = 0;
carousel1();

function carousel1() {
  var i;
  var x = document.getElementsByClassName("slide");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex1++;
  if (myIndex1 > x.length) {myIndex1 = 1}    
  x[myIndex1-1].style.display = "block";  
  setTimeout(carousel1, 2000); // Change image every 2 seconds
}
</script>
<br>
</div>
</div>
<div class="col-6">
<div class="text"><p>Kempegowda Museum is a government museum located in the city of Bangalore, in the state of Karnataka, India. It was established in the year 2011 is dedicated to Yelahanka chieftain Kempegowda (1513-1569) who was the founder of Bangalore city. The museum is located on the first floor of Mayo Hall.[1] The museum has Kempegowda's statue as well as posters and pictures of forts, temples, reservoirs and inscriptions from his time.<br>Slot-1(10:00 AM to 2:00 PM)<br>Slot-2(4:00 PM to 10:00 PM)<br>Prices:<br>Indian:<%out.println(" "+session.getAttribute("price")+"/-"); %><br>NRI:<%out.println(" "+session.getAttribute("nri")+"/-"); %></p></div>
<div class="location"><a href="https://www.google.com/maps/place/Kempegowda+Museum/@12.9740416,77.6083284,17z/data=!3m1!4b1!4m5!3m4!1s0x3bae168729978771:0xd6314569649422ea!8m2!3d12.9740414!4d77.6109665?hl=en">Location</a></div>


</div>


</div>
</div>
 
</form>
<jsp:include page="test1.jsp"></jsp:include>
</body>
</html>