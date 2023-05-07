<%@page import="javax.swing.text.Document"%>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="java.sql.*" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.time.format.DateTimeFormatter" %>  
<%@ page import ="java.time.LocalDateTime" %>
<%@ page import ="java.lang.*" %>
<%@ page import="connection.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket</title>
<link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>

</head>
<style>

@import url("https://fonts.googleapis.com/css2?family=Staatliches&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap");

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body,
html {
	height: 100vh;
	display: grid;
	font-family: "Staatliches", cursive;
	background: radial-gradient(ellipse farthest-corner at center top, #ECECEC, #999);;
	color: black;
	font-size: 14px;
	letter-spacing: 0.1em;
}

.ticket {
	margin: auto;
	display: flex;
	background: white;
	box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
}

.left {
	display: flex;
}

.image {
	width: 250px;
	background-image: url("./images/hyd1.jpg");
	background-size: contain;
	opacity: 0.85;
}

.admit-one {
	position: absolute;
	color: black;
	height: 250px;
	padding: 0 10px;
	letter-spacing: 0.15em;
	display: flex;
	text-align: center;
	justify-content: space-around;
	writing-mode: vertical-rl;
	transform: rotate(-180deg);
}

.admit-one span:nth-child(2) {
	color: black;
	font-weight: 700;
}

.left .ticket-number {
	height: 250px;
	width: 250px;
	display: flex;
	justify-content: flex-end;
	align-items: flex-end;
	padding: 5px;
}

.ticket-info {
	padding: 10px 30px;
	display: flex;
	flex-direction: column;
	text-align: center;
	justify-content: space-between;
	align-items: center;
}

.date {
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	padding: 5px 0;
	font-weight: 700;
	display: flex;
	align-items: center;
	justify-content: space-around;
}

.date span {
	width: 100px;
}

.date span:first-child {
	text-align: left;
}

.date span:last-child {
	text-align: right;
}

.date .june-29 {
	color: #d83565;
	font-size: 20px;
}

.show-name {
	font-size: 32px;
	font-family: "Nanum Pen Script", cursive;
	color: #d83565;
}

.show-name h1 {
	font-size: 48px;
	font-weight: 700;
	letter-spacing: 0.1em;
	color: #4a437e;
}

.time {
	padding: 10px 0;
	color: #4a437e;
	text-align: center;
	display: flex;
	flex-direction: column;
	gap: 10px;
	font-weight: 700;
}

.time span {
	font-weight: 400;
	color: gray;
}

.left .time {
	font-size: 16px;
}


.location {
	display: flex;
	justify-content: space-around;
	align-items: center;
	width: 100%;
	padding-top: 8px;
	border-top: 1px solid gray;
}

.location .separator {
	font-size: 20px;
}

.right {
	width: 180px;
	border-left: 1px dashed #404040;
}

.right .admit-one {
	color: darkgray;
}

.right .admit-one span:nth-child(2) {
	color: gray;
}

.right .right-info-container {
	height: 250px;
	padding: 10px 10px 10px 35px;
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	align-items: center;
}

.right .show-name h1 {
	font-size: 18px;
}

.barcode {
	height: 100px;
}

.barcode img {
	height: 100%;
}

.right .ticket-number {
	color: gray;
}


</style>
<body>
 <%String mob2; %>
<%
mob2=(String)session.getAttribute("mob2");
String path="C:\\QR_CODE\\"+mob2+".png";
String id3="./qr_imgs/"+mob2+".png";
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticketless", "root", "Sreyas@2002");
Statement st=conn.createStatement();

try {
ResultSet rs=st.executeQuery("select * from visitor where contact='"+mob2+"'");
while(rs.next())
{
	
	String name=rs.getString("name");
	session.setAttribute("name", name);
	String gender=rs.getString("gender");
	session.setAttribute("gender", gender);
	String nationality=rs.getString("nationality");
	session.setAttribute("nationality", nationality);
	String contact=rs.getString("contact");
	String mid=rs.getString("mid");
	session.setAttribute("mid", mid);
	String date=rs.getString("date");
	session.setAttribute("date", date);
	String slot=rs.getString("slot");
	session.setAttribute("slot", slot);
	String tid=rs.getString("tid");
	session.setAttribute("tid", tid);
	String price=rs.getString("price");
	session.setAttribute("price1", price);
	String time="";
	if(slot.equals("Slot-1")){
		time+="10:00 AM TO 2:00 PM";
		session.setAttribute("time", time);
	}else if(slot.equals("Slot-2")){
		time+="4:00 PM to 10:00 PM";
		session.setAttribute("time", time);
	}
	
	}
}
catch(Exception e){
	out.println(e);
}
%>


<div class="ticket">
	<div class="left">
		<div class="image">
			<p class="admit-one">
				<span>ADMIT ONE</span>
				<span><%out.print(session.getAttribute("name")); %></span>
				<span><%out.print(session.getAttribute("gender")); %></span>
			</p>
			<div class="ticket-number">
				<p>
					<%out.print(session.getAttribute("tid")); %>
				</p>
			</div>
		</div>
		<div class="ticket-info">
			<p class="date">
				<span>Date</span>
				<span class="june-29"><%out.print(session.getAttribute("date")); %></span>
				
			</p>
			<div class="show-name">
				<h1>Welcome</h1>
				<h2>Have A Great Day</h2>
			</div>
			<div class="time">
				<%out.print(session.getAttribute("slot")); %>
				<p>TIMINGS <span>@</span><% out.print(session.getAttribute("time"));%></p>
				<%out.println("Price: "+session.getAttribute("price1")+"/-"); %>
			</div>
			<p class="location"><span><%out.print(session.getAttribute("mid")); %></span>
				<span class="separator"><i class="far fa-smile"></i></span><span><%out.print(session.getAttribute("nationality")); %></span>
			</p>
		</div>
	</div>
	<div class="right">
		<p class="admit-one">
			<span>ADMIT ONE</span>
			<span><%out.print(session.getAttribute("name")); %></span>
			<span><%out.print(session.getAttribute("gender")); %></span>
		</p>
		<div class="right-info-container">
			<div class="show-name">
				<h1>Leave It Here!</h1>
			</div>
			<div class="time">
				<%out.print(session.getAttribute("slot")); %>
				<p>TIMINGS <span>@</span> <% out.print(session.getAttribute("time"));%></p>
			</div>
			<div class="barcode">
				<img src="<%=id3%>" alt="qrcode">
			</div>
			<p class="ticket-number">
				<%out.print(session.getAttribute("tid")); %>
			</p>
		</div>
	</div>
</div>

</body>
</html>