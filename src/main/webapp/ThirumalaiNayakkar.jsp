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
<title>Thirumalai Nayakkar Mahal</title>
<link rel="stylesheet" href="places.css">

</head>
<body>

<form method="post" >
<%String mid="THIRNAYK";
String price="35";
session.setAttribute("price", price);
session.setAttribute("mid", mid);
int p=Integer.parseInt(price);
int nri=p*5;
session.setAttribute("nri", nri);%>
<div class="abc">



<div class="row1">
<div class="col-12"><h1>Thirumalai Nayakkar Mahal</h1></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide" alt="Thirumalai Nayakkar" src="images/ThirumalaiNayakkar.jpg" width="100%" height="500px">
<img class="slide" alt="Thirumalai Nayakkar" src="images/ThirumalaiNayakkar1.jpg" width="100%" height="500px">
<img class="slide" alt="Thirumalai Nayakkar" src="images/ThirumalaiNayakkar2.jpg" width="100%" height="500px">
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
<div class="text"><p>Thirumalai Nayak Palace is a 17th-century palace erected in 1636 AD by King Tirumala Nayaka, a king of Madurai's Nayaka dynasty who ruled Madurai from 1623 to 1659, in the city of Madurai, India. This Palace is a classic fusion of Italian and Rajput styles. The building, which can be seen today, was the main Palace, in which the king lived. The original Palace Complex was four times bigger than the present structure. In its heyday, the palace was considered to be one of the wonders of the South. This palace is two kilometres (1.2 mi) south east of the Meenakshi Amman Temple.<br>Slot-1(10:00 AM to 2:00 PM)<br>Slot-2(4:00 PM to 10:00 PM)<br>Prices:<br>Indian:<%out.println(" "+session.getAttribute("price")+"/-"); %><br>NRI:<%out.println(" "+session.getAttribute("nri")+"/-"); %></p></div>
<div class="location"><a href="https://www.google.com/maps/place/Thirumalai+Nayakkar+Palace,+Panthadi+1st+St,+Mahal+Area,+Madurai+Main,+Madurai,+Tamil+Nadu+625001/@9.9150904,78.1215596,17z/data=!3m1!4b1!4m5!3m4!1s0x3b00c59d167a4b05:0x662a4377ed8bdea4!8m2!3d9.9150904!4d78.1237483?hl=en">Location</a></div>


</div>


</div>
</div>

     
</form>
<jsp:include page="test1.jsp"></jsp:include>
</body>
</html>