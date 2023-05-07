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
<title>Salar Jung Museum</title>
<link rel="stylesheet" href="places.css">

</head>
<body>

<form method="post">
<%String mid="SALARHYD";
String price="95";
session.setAttribute("price", price);
session.setAttribute("mid", mid);
int p=Integer.parseInt(price);
int nri=p*5;
session.setAttribute("nri", nri);%>
<div class="abc">



<div class="row1">
<div class="col-12"><h1>Salar Jung Museum</h1></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide" alt="Salar Jung Museum" src="images/sj1.jpg" width="100%" height="500px">
<img class="slide" alt="Salar Jung Museum" src="images/sj2.jpg" width="100%" height="500px">
<img class="slide" alt="Salar Jung Museum" src="images/sj3.jpg" width="100%" height="500px">
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
<div class="text"><p>The Salar Jung Museum was established in 1951 under the supervision of Salar Jung Estate Committee. The heirs of Salar Jung III graciously agreed to donate the entire collections to government of India. Later an act of Parliament known as Salar Jung Museum Act-1961 was passed on 19 th May, 1961 thereby the museum along with its library was declared as an institution of National importance and the administration was transferred to the Salar Jung Museum Board.

The Salar Jung Museum is a repository of rare objects from nearly all over the world, right from Europe to the Far Eastern nations in Asia. Though originally displayed in the beautiful "Diwan Deodi" the ancestral palace of the Salar Jung(s), the entire collection was shifted to the present building in the year 1968, which was constructed on the southern bank of River Musi.<br>Slot-1(10:00 AM to 2:00 PM)<br>Slot-2(4:00 PM to 10:00 PM)<br>Prices:<br>Indian:<%out.println(" "+session.getAttribute("price")+"/-"); %><br>NRI:<%out.println(" "+session.getAttribute("nri")+"/-"); %></p></div>
<div class="location"><a href="https://www.google.com/maps/place/Salar+Jung+Museum/@17.3713411,78.4792221,18z/data=!3m1!4b1!4m5!3m4!1s0x3bcb9787e263d7bb:0x353b934b9b69a041!8m2!3d17.3716084!4d78.4802439">Location</a></div>


</div>


</div>
</div>

    
</form>
<jsp:include page="test1.jsp"></jsp:include>
</body>
</html>