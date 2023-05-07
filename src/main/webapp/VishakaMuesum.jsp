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
<title>Vishaka Muesum</title>
<link rel="stylesheet" href="places.css">

</head>
<body>

<form method="post" action="test1.jsp">
<%String mid="VISHAKAAP";
String price="48";
session.setAttribute("price", price);
session.setAttribute("mid", mid);
int p=Integer.parseInt(price);
int nri=p*5;
session.setAttribute("nri", nri);%>
<div class="abc">



<div class="row1">
<div class="col-12"><h1>Vishaka Muesum</h1></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide" alt="Vishaka Muesum" src="images/VishakaMuesum.jpg" width="100%" height="500px">
<img class="slide" alt="Vishaka Muesum" src="images/VishakaMuesum1.jpg" width="100%" height="500px">
<img class="slide" alt="Vishaka Muesum" src="images/VishakaMuesum2.jpg" width="100%" height="500px">
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
<div class="text"><p>Visakhapatnam is a popular tourist destination with a history dated back to 260 BC. Visakhapatnam Municipal Corporation Museum, more popularly known as the Visakha Museum has taken the huge task of preserving the records of the great history of Vizag city.

Situated on the RK beach road, Visakha museum attracts a huge number of tourists thronging this place to see the historical treasures and artifacts of the Kalinga Andhra region. Once a ruined Dutch bungalow on the beach road, it was renovated and turned into a Museum of great importance.<br>Slot-1(10:00 AM to 2:00 PM)<br>Slot-2(4:00 PM to 10:00 PM)<br>Prices:<br>Indian:<%out.println(" "+session.getAttribute("price")+"/-"); %><br>NRI:<%out.println(" "+session.getAttribute("nri")+"/-"); %></p></div>
<div class="location"><a href="https://www.google.com/maps/place/Visakha+Museum/@17.7208222,83.3316574,17z/data=!3m1!4b1!4m5!3m4!1s0x3a39436065fc2ee3:0x8d8850454a543e45!8m2!3d17.7208222!4d83.3338461">Location</a></div>


</div>


</div>
</div>

    
</form>
<jsp:include page="test1.jsp"></jsp:include>
</body>
</html>