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
<title>Golkonda</title>
<link rel="stylesheet" href="places.css">

</head>
<body>

<form method="post">
<%String mid="GOLKHYD";
String price="55";
session.setAttribute("price", price);
session.setAttribute("mid", mid);
int p=Integer.parseInt(price);
int nri=p*5;
session.setAttribute("nri", nri);%>
<div class="abc">



<div class="row1">
<div class="col-12"><h1>Golkonda</h1></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide" alt="Telangana" src="images/telangana.jpg" width="100%" height="500px">
<img class="slide" alt="Telangana" src="images/golkonda.jpg" width="100%" height="500px">
<img class="slide" alt="Telangana" src="images/golkonda1.jpg" width="100%" height="500px">
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
<div class="text"><p>Golconda Fort (Urdu: "round hill"), (Telugu Gollakonda: "shepherds' hill"), is a fortified citadel built by the Qutb Shahi dynasty (c. 1512-1687) as the capital of the Golconda Sultanate, located in Hyderabad, Telangana, India. Because of the vicinity of diamond mines, especially Kollur Mine, Golconda flourished as a trade centre of large diamonds, known as the Golconda Diamonds.<br>Slot-1(10:00 AM to 2:00 PM)<br>Slot-2(4:00 PM to 10:00 PM)<br>Prices:<br>Indian:<%out.println(" "+session.getAttribute("price")+"/-"); %><br>NRI:<%out.println(" "+session.getAttribute("nri")+"/-"); %></p></div>
<div class="location"><a href="https://www.google.com/maps/place/Golconda+Fort/@17.383309,78.3988641,17z/data=!3m1!4b1!4m5!3m4!1s0x3bcb968ea6aea98f:0x6b76ecdfd65a335a!8m2!3d17.383309!4d78.4010528">Location</a></div>


</div>


</div>
</div>

         
</form>
<jsp:include page="test1.jsp"></jsp:include>
</body>
</html>