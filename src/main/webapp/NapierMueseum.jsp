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
<title>Napier Museum</title>
<link rel="stylesheet" href="places.css">

</head>
<body>

<form method="post" >
<%String mid="NAPRKE";
String price="41";
session.setAttribute("price", price);
session.setAttribute("mid", mid);
int p=Integer.parseInt(price);
int nri=p*5;
session.setAttribute("nri", nri);%>
<div class="abc">



<div class="row1">
<div class="col-12"><h1>Napier Museum</h1></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide" alt="Napier Museum" src="images/NapierMuseum.jpg" width="100%" height="500px">
<img class="slide" alt="Napier Museum" src="images/NapierMuseum1.jpg" width="100%" height="500px">
<img class="slide" alt="Napier Museum" src="images/NapierMuseum2.jpg" width="100%" height="500px">
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
<div class="text"><p>A building was constructed in 1857 during the reign of Uthram Thirunal Marthanda Varma,[3] and later demolished in 1874 to lay foundation for a new building, during the reign of Ayilyam Thirunal.[4]

The Governor of Madras in 1872 appointed Robert Chisholm, a consulting architect of the Madras Government to design a new museum. In 1880, construction finished and the museum opened to the public, bearing the namesake of its governor, Francis Napier, 10th Lord Napier.

The Indo-Saracenic structure lacks an air conditioning system. Although it has never been an issue due to suitable natural ventilation, an annex built in 2016 was noted for various problems such as mold, insects and corrosion owing to the lack of windows and openings. Since 2017, the annexed museum depot has been under review and is being rebuilt. Furthermore, the Napier Museum itself is being renovated.<br>Slot-1(10:00 AM to 2:00 PM)<br>Slot-2(4:00 PM to 10:00 PM)<br>Prices:<br>Indian:<%out.println(" "+session.getAttribute("price")+"/-"); %><br>NRI:<%out.println(" "+session.getAttribute("nri")+"/-"); %></p></div>
<div class="location"><a href="https://www.google.com/maps/place/Napier+Museum/@8.5089657,76.9528833,17z/data=!3m1!4b1!4m5!3m4!1s0x3b05bbc8d10879c5:0xf082c2344d2f33b7!8m2!3d8.5089657!4d76.955072?hl=en">Location</a></div>


</div>


</div>
</div>

    
</form>
<jsp:include page="test1.jsp"></jsp:include>
</body>
</html>