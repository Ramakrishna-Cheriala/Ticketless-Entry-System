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
<title>Bekal Fort</title>
<link rel="stylesheet" href="places.css">

</head>
<body>

<form method="post" >
<%String mid="BKLFRT";
String price="50";
session.setAttribute("price", price);
session.setAttribute("mid", mid);
int p=Integer.parseInt(price);
int nri=p*5;
session.setAttribute("nri", nri);%>
<div class="abc">



<div class="row1">
<div class="col-12"><h1>Bekal Fort</h1></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide" alt="Bekal Fort" src="images/BekalFort.jpg" width="100%" height="500px">
<img class="slide" alt="Bekal Fort" src="images/BekalFort1.jpg" width="100%" height="500px">
<img class="slide" alt="Bekal Fort" src="images/BekalFort2.jpg" width="100%" height="500px">
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
<div class="text"><p>The fort appears to emerge from the sea. Almost three-quarters of its exterior is in contact with water. Bekal fort was not an administrative centre and does not include any palaces or mansions.

An important feature is the water-tank, magazine and the flight of steps leading to an observation tower built by Tipu Sultan.[1] Standing at the centre of the fort, this offers views of the coastline and the towns of Kanhangad, Pallikkara, Bekal, Mavval, Kottikkulam, and Uduma.

The fort's zigzag entrance and surrounding trenches reveal its defensive strategy. Holes on the outer walls are designed to defend the fort effectively from naval attacks. The upper holes meant for aiming at the farthest targets; lower holes below for striking as enemy nearer and the lowest holes to attacking enemy closest to the fort<br>Slot-1(10:00 AM to 2:00 PM)<br>Slot-2(4:00 PM to 10:00 PM)<br>Prices:<br>Indian:<%out.println(" "+session.getAttribute("price")+"/-"); %><br>NRI:<%out.println(" "+session.getAttribute("nri")+"/-"); %></p></div>
<div class="location"><a href="https://www.google.com/maps/place/Bekal+Fort/@12.3929083,75.0313643,17z/data=!3m1!4b1!4m5!3m4!1s0x3ba480997024825b:0xdfa93a3077d7b271!8m2!3d12.3929083!4d75.033553?hl=en">Location</a></div>


</div>


</div>
</div>

     
</form>
<jsp:include page="test1.jsp"></jsp:include>
</body>
</html>