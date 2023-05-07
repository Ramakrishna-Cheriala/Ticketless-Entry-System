<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="Home1.css">

<script language="javascript">
function Telangana(){
switch(document.getElementById('s1').value)
{
case "golkonda":
window.location="Golkonda.jsp";
break;

case "Salar Jung Museum":
window.location="SalarJung.jsp";
break;

}
}

function AndraPradesh(){
	switch(document.getElementById('s2').value)
	{
	case "Chandra":
	window.location="Chandragiri.jsp";
	break;

	case "Vishaka Muesum":
	window.location="VishakaMuesum.jsp";
	break;

	}
	}
	
function TamilNadu(){
	switch(document.getElementById('s3').value)
	{
	case "Dakshina Chitra Museum":
	window.location="DakshinaChitra.jsp";
	break;

	case "Thirumalai Nayakkar Mahal":
	window.location="ThirumalaiNayakkar.jsp";
	break;

	}
	}
	
function KERALA(){
	switch(document.getElementById('s4').value)
	{
	case "Bekal Fort":
	window.location="BekalFort.jsp";
	break;

	case "Napier Mueseum":
	window.location="NapierMueseum.jsp";
	break;

	}
	}
	
function KARNATAKA(){
	switch(document.getElementById('s5').value)
	{
	case "Mysore Palace":
	window.location="MysorePalace.jsp";
	break;

	case "Kempegowda Muesuem":
	window.location="KempegowdaMusuem.jsp";
	break;

	}
	}
	
////////////////// 
</script>

</head>
<body>
<nav>
<ul class=left>
<img class=" " style="float: left;" src="images/logo.jpg" width="50" height="42">
<li><a href="Home1.jsp">Home</a></li>
<div class="dropdown">
<button class="dropbtn">Places</button>
    <div class="dropdown-content">
      <a href="Golkonda.jsp">Golkonda Fort</a>
      <a href="SalarJung.jsp">Salar Jung Museum</a>
      <a href="Chandragiri.jsp">Chandragiri Fort</a>
      <a href="VishakaMuesum.jsp">Vishaka Muesum</a>
      <a href="DakshinaChitra.jsp">Dakshina Chitra</a>
      <a href="ThirumalaiNayakkar.jsp">Thirumalai Nayakkar Mahal</a>
      <a href="BekalFort.jsp">Bekal Fort</a>
      <a href="NapierMueseum.jsp">Napier Mueseum</a>
      <a href="MysorePalace.jsp">Mysore Palace</a>
      <a href="KempegowdaMusuem.jsp">Kempegowda Musuem</a>
      </div>
      </div>
<li><a href="#contactus">Contact Us</a></li>
<li><a href="#about">About</a></li>
<li class=right><a href="Login.jsp">Login</a>
</ul>
</nav>

<div class="abc">
<div class="row">
<div class="col-12">
<div class="image">
<img class="image1" alt="Home" src="images/hyd.jpg" width="70%" height="600px">
</div>

</div>
</div>
</div>

<%--  TELANGANA --%>
<div class="abc">
<div class="row">
<div class="col-12"><label>Telangana</label></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide" alt="Telangana" src="images/telangana.jpg" width="100%" height="500px">
<img class="slide" alt="Telangana" src="images/golkonda1.jpg" width="100%" height="500px">
<img class="slide" alt="Telangana" src="images/sj1.jpg" width="100%" height="500px">
<img class="slide" alt="Telangana" src="images/sj2.jpg" width="100%" height="500px">
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
</div>
</div>
<div class="col-6">
<div class="box">
<p class="text">Telangana is the newly born 29th state of India, consisting of the ten north-western districts of Andhra Pradesh. It was originally part of the region comprising Hyderabad in Andhra Pradesh. With the separation, Telangana has got a whole new identity, packed with rich history and culture this state is exploring its tourism strengths</p>
<SELECT id="s1" NAME="section" onChange="Telangana();">
<Option value="">Select Place</option>
<Option value="golkonda">Golkonda</option>
<Option value="Salar Jung Museum">Salar Jung Museum</option>
</SELECT>
</div>
</div>
</div>
<%-- ################################# --%>

<%--  AP --%>
<div class="abc">
<div class="row">
<div class="col-12"><label>ANDRA PRADESH</label></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide1" alt="AP" src="images/Chandragiri1.jpg" width="100%" height="500px">
<img class="slide1" alt="AP" src="images/VishakaMuesum1.jpg" width="100%" height="500px">
<img class="slide1" alt="AP" src="images/Chandragiri2.jpg" width="100%" height="500px">
<img class="slide1" alt="AP" src="images/VishakaMuesum2.jpg" width="100%" height="500px">
</div>
<script type="text/javascript">
var myIndex2 = 0;
carousel2();

function carousel2() {
  var i;
  var x = document.getElementsByClassName("slide1");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex2++;
  if (myIndex2 > x.length) {myIndex2 = 1}    
  x[myIndex2-1].style.display = "block";  
  setTimeout(carousel2, 2000); // Change image every 2 seconds
}
</script>
</div>
</div>
<div class="col-6">
<div class="box">
<p class="text">Andhra Pradesh, with its exquisite temples and ancient shrines, is counted among the top pilgrimage destinations in India. On an Andhra Pradesh pilgrimage tour, tourists can visit the sacred 'Mallikarjuna Temple' in Srisailam and pay their obeisance to one of the 12 Jyotirlingas of Shiva, admire the architectural brilliance of the stunning mural-adorned edifice of the 'Lepakshi Temple' in Anantpur, or just soak in the mystical aura of the 'Kanaka Durga Temple' at Vijayawada, where Goddess Durga is worshipped in her Mahishasurmardini avatar.

Apart from that, pilgrimage tourism in Andhra Pradesh should also involve a visit to the holy abode of Lord Shri Venkateswara Swamy, an incarnation of Lord Vishnu who is believed to have been residing in the hallowed sanctuary of "Tirumala Tirupati Balaji Temple" since Vedic times. Built in 300 AD by the Tamil King, Thondaimaan, it is one of the world's richest shrines, which receives a donation of over 300 crore every year from millions and millions of devotees.</p>
<SELECT id="s2" NAME="section" onChange="AndraPradesh();">
<Option value="">Select Place</option>
<Option value="Chandra">Chandragiri</option>
<Option value="Vishaka Muesum">Vishaka Muesum</option>
</SELECT>
</div>
</div>
</div>
<%-- ################################# --%>

<%--  TamilNadu --%>
<div class="abc">
<div class="row">
<div class="col-12"><label>TamilNadu</label></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide2" alt="TN" src="images/DakshinaChitra.jpg" width="100%" height="500px">
<img class="slide2" alt="TN" src="images/ThirumalaiNayakkar.jpg" width="100%" height="500px">
<img class="slide2" alt="TN" src="images/DakshinaChitra1.jpg" width="100%" height="500px">
<img class="slide2" alt="TN" src="images/ThirumalaiNayakkar1.jpg" width="100%" height="500px">
</div>
<script type="text/javascript">
var myIndex3 = 0;
carouse3();

function carouse3() {
  var i;
  var x = document.getElementsByClassName("slide2");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex3++;
  if (myIndex3 > x.length) {myIndex3 = 1}    
  x[myIndex3-1].style.display = "block";  
  setTimeout(carouse3, 2000); // Change image every 2 seconds
}
</script>
</div>
</div>
<div class="col-6">
<div class="box">
<p class="text">Situated along the Bay of Bengal in south India, Tamil Nadu is one of India's most well-known tourist destinations owing to its natural splendour, unique culture as well as religious significance. The state boasts of a plethora of religious sites that attract pilgrims, historical attractions, vast plantations, mesmerising hill stations, diverse wildlife, delicious cuisine and loads of festivities.

A visit to Tamil Nadu surely warrants a trip to its capital, Chennai, the 'Detroit of India'. A metropolitan with a rich colonial heritage, it is best known for Marina Beach, Fort St. George, Ashtalakshmi Temple etc</p>
<SELECT id="s3" NAME="section" onChange="TamilNadu();">
<Option value="">Select Place</option>
<Option value="Dakshina Chitra Museum">Dakshina Chitra Museum</option>
<Option value="Thirumalai Nayakkar Mahal">Thirumalai Nayakkar Mahal</option>
</SELECT>
</div>
</div>
</div>
<%-- ################################# --%>


<%--  KERALA --%>
<div class="abc">
<div class="row">
<div class="col-12"><label>KERALA</label></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide3" alt="KERALA" src="images/BekalFort.jpg" width="100%" height="500px">
<img class="slide3" alt="KERALA" src="images/NapierMuseum.jpg" width="100%" height="500px">
<img class="slide3" alt="KERALA" src="images/BekalFort1.jpg" width="100%" height="500px">
<img class="slide3" alt="KERALA" src="images/NapierMuseum1.jpg" width="100%" height="500px">
</div>
<script type="text/javascript">
var myIndex4 = 0;
carouse4();

function carouse4() {
  var i;
  var x = document.getElementsByClassName("slide3");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex4++;
  if (myIndex4 > x.length) {myIndex4 = 1}    
  x[myIndex4-1].style.display = "block";  
  setTimeout(carouse4, 2000); // Change image every 2 seconds
}
</script>
</div>
</div>
<div class="col-6">
<div class="box">
<p class="text">Kerala is a charming South Indian destination that should be in every traveller's bucket list. Adorned with the emerald backwaters, sprawling and lush tea estates, pristine hill stations, and azure Arabian Sea, Kerala tourism boasts numerous tourist places with which you will fall in love instantly.

In North Kerala, districts like Kasaragod, Kannur, Wayanad, Kozhikode, and Malappuram have many attractions for the tourists. Wayanad offers a lovely hill station holiday whereas Kozhikode offers a great beach holiday and an opportunity of bird watching.

In Central Kerala, Palakkad, Thrissur, Ernakulam, and Idukki have a number of experiences in store. Thrissur is a culture aficionado's paradise while Idukki and Ernakulam are the hotspots for nature lovers.

In South Kerala Kottayam, Pathanamthitta, Alappuzha, Kollam, Thiruvananthapuram are ready with a variety of experiences like backwaters and houseboat in Alappuzha; beach vacations in Kollam, and a glance at rich history of Kerala at Pathanamthitta.</p>
<SELECT id="s4" NAME="section" onChange="KERALA();">
<Option value="">Select Place</option>
<Option value="Bekal Fort">Bekal Fort</option>
<Option value="Napier Mueseum">Napier Mueseum</option>
</SELECT>
</div>
</div>
</div>
<%-- ################################# --%>


<%--  KARNATAKA --%>
<div class="abc">
<div class="row">
<div class="col-12"><label>KARNATAKA</label></div>
<div class="col-6">
<div class="box">
<div class="image">
<img class="slide4" alt="KARNATAKA" src="images/MysorePalace.jpg" width="100%" height="500px">
<img class="slide4" alt="KARNATAKA" src="images/KempegowdaMuesuem.jpg" width="100%" height="500px">
<img class="slide4" alt="KARNATAKA" src="images/MysorePalace1.jpg" width="100%" height="500px">
<img class="slide4" alt="KARNATAKA" src="images/KempegowdaMuesuem1.jpg" width="100%" height="500px">
</div>
<script type="text/javascript">
var myIndex5 = 0;
carouse5();

function carouse5() {
  var i;
  var x = document.getElementsByClassName("slide4");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex5++;
  if (myIndex5 > x.length) {myIndex5 = 1}    
  x[myIndex5-1].style.display = "block";  
  setTimeout(carouse5, 2000); // Change image every 2 seconds
}
</script>
</div>
</div>
<div class="col-6">
<div class="box">
<p class="text">Karnataka is located in the southwestern region of India. It is a rich state, rich in culture & heritage as well as the diversity of its landscape. Larger than life palaces fascinate you as much as the beaches & hill stations, all of which are an intrinsic part of Karnataka tourism places. It attracts sightseeing lovers as much as adventure enthusiasts. It also boasts a glorious past which is evident in its forts, palaces and ancient towns, one example of which is the illustrious Vijayanagara Empire. But Karnataka's fascination also extends to its hill stations which are major tourist attractions like Chikmagalur, quiet relaxed beaches and temples like Virupaksha and Vitthala, that stand as a testimony to the architectural perfection achieved in the past. This is why a holiday in Karnataka is a getaway to complete delight, rife with adventures, sightseeing and entertainment!.</p>
<SELECT id="s5" NAME="section" onChange="KARNATAKA();">
<Option value="">Select Place</option>
<Option value="Mysore Palace">Mysore Palace</option>
<Option value="Kempegowda Muesuem">Kempegowda Muesuem</option>
</SELECT>
</div>
</div>
</div>
<%-- ################################# --%>

</body>
</html>