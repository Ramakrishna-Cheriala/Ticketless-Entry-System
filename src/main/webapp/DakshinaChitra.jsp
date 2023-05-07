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
<title>Dakshina Chitra Museum</title>
<link rel="stylesheet" href="places.css">

</head>
<body>

<form method="post" action="test1.jsp">
<%String mid="DKCHM";
String price="60";
session.setAttribute("price", price);
session.setAttribute("mid", mid);
int p=Integer.parseInt(price);
int nri=p*5;
session.setAttribute("nri", nri);%>
<div class="abc">



<div class="row1">
<div class="col-12"><h1>Dakshina Chitra Museum</h1></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide" alt="Dakshina Chitra" src="images/DakshinaChitra.jpg" width="100%" height="500px">
<img class="slide" alt="Dakshina Chitra" src="images/DakshinaChitra1.jpg" width="100%" height="500px">
<img class="slide" alt="Dakshina Chitra" src="images/DakshinaChitra2.jpg" width="100%" height="500px">
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
<div class="text"><p>
DakshinaChitra
DakshinaChitra is an exciting cross cultural living museum of art, architecture, lifestyles, crafts and performing arts of South India. The main mission is to exhibit, promote and preserve aspects of the broader, more inclusive cultures of the states and to bring these arts to the public in a participative, enjoyable and engaging way. DakshinaChitra Heritage Museum , a project of Madras Craft Foundation an NGO was opened to the public on December 14th 1996. The Museum is located overlooking the Bay of Bengal, at Muttukadu, twenty five kilometers south of Central Chennai, on the East Coast Road to Mamallapuram, Tamil Nadu, India<br>Slot-1(10:00 AM to 2:00 PM)<br>Slot-2(4:00 PM to 10:00 PM)<br>Prices:<br>Indian:<%out.println(" "+session.getAttribute("price")+"/-"); %><br>NRI:<%out.println(" "+session.getAttribute("nri")+"/-"); %></p></div>
<div class="location"><a href="https://www.google.com/maps/place/DakshinaChitra+Heritage+Museum/@12.823037,80.2398564,17z/data=!3m1!4b1!4m5!3m4!1s0x3a525a8e2bb47f8f:0x58a72389ff4df633!8m2!3d12.823037!4d80.2420451">Location</a></div>


</div>


</div>
</div>

 
</form>
<jsp:include page="test1.jsp"></jsp:include>
</body>
</html>