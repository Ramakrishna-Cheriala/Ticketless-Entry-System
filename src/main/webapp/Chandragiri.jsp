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
<title>Chandragiri</title>
<link rel="stylesheet" href="places.css">

</head>
<body>

<form method="post">
<%String mid="CHANDTIR";
String price="40";
session.setAttribute("price", price);
session.setAttribute("mid", mid);
int p=Integer.parseInt(price);
int nri=p*5;
session.setAttribute("nri", nri);%>
<div class="abc">



<div class="row1">
<div class="col-12"><h1>Chandragiri</h1></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide" alt="Chandragiri" src="images/Chandragiri.jpg" width="100%" height="500px">
<img class="slide" alt="Chandragiri" src="images/Chandragiri1.jpg" width="100%" height="500px">
<img class="slide" alt="Chandragiri" src="images/Chandragiri2.jpg" width="100%" height="500px">
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
<div class="text"><p>Chandragiri is now famous for the historical fort, built in the 11th century, and the Raja Mahal (Palace) within it. The fort encircles eight ruined temples of Saivite and Vaishnavite pantheons, Raja Mahal, Rani Mahal and other ruined structures.

The Raja Mahal Palace is now an archaeological museum. The fort and palace are in the care of the Archaeological Survey of India. The palace is open to the public, but the fort is closed. The palace is an example of Indo-Sarcen architecture of the Vijayanagar period. The palace was constructed using stone, brick, lime mortar and devoid of timber. The crowning towers represents the Hindu architectural elements.<br>Slot-1(10:00 AM to 2:00 PM)<br>Slot-2(4:00 PM to 10:00 PM)<br>Prices:<br>Indian:<%out.println(" "+session.getAttribute("price")+"/-"); %><br>NRI:<%out.println(" "+session.getAttribute("nri")+"/-"); %></p></div>
<div class="location"><a href="https://www.google.com/maps/place/Chandragiri+Fort/@13.5887117,79.3080067,15z/data=!4m13!1m7!3m6!1s0x3bb2b38a48fcd1f9:0x367b3e97586cda13!2sChandragiri,+Andhra+Pradesh+517101!3b1!8m2!3d13.5881118!4d79.3155716!3m4!1s0x3bb2b3f75c9a233f:0xae39276156e407ac!8m2!3d13.5830349!4d79.3053587?hl=en">Location</a></div>


</div>


</div>
</div>
<jsp:include page="test1.jsp"></jsp:include>
</form>

</body>
</html>