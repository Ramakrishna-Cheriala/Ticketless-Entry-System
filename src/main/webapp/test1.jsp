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
<%@page import="connection.*" %>
<%@page import="connection.Connection_Establish" %>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html lang="en-us">
    <head>
        <meta charset="UTF-8">
        <title>Responsive Registration Form</title>
        <link rel="stylesheet" href="places.css">
    </head>
       
    <body>
<body>
    <form method="post">
        <h1>Ticket Booking</h1>
        <div class="container">
        <div class="row">
                <div class="col-10">
                    <label for="date">Date:</label>
                </div>
                <div class="col-90">
                    <input type="date" id="date" name="date" >
                </div>
            </div>
            
            <div class="row">
                <div class="col-10">
                    <label for="slot" required>Slot:</label>
                </div>
                <div class="col-90">
                    <input type="radio" name="slot" value="slot-1" id="slot-1">Slot-1
					<input type="radio" name="slot" value="slot-2" id="slot-2">Slot-2
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="name">Name:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="name" name="name" placeholder="Enter your name">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="email">Email:</label>
                </div>
                <div class="col-90">
                    <input type="email" id="email" name="email" placeholder="it should contain @,.">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="mobile">Mobile:</label>
                </div>
                <div class="col-90">
                    <input type="tel" id="mobile" name="mobile" placeholder="only 10 digits are allowed" pattern="[0-9]{10}">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="age">Age:</label>
                </div>
                <div class="col-90">
                    <input type="number" id="age" name="age">
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="gender" required>Gender:</label>
                </div>
                <div class="col-90">
                    <input type="radio" id="Male" name="gender" value="Male" />Male
                    <input type="radio" id="Female" name="gender" value="Female"/>Female
                    <input type="radio" id="Others" name="gender" value="Others"/>Others
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="nationality" required>Nationality:</label>
                </div>
                <div class="col-90">
                    <input type="radio" name="res" value="Indian" checked="checked">Indian
					<input type="radio" name="res"value="NRI">NRI
                </div>
            </div>
            <div class="row">
                <div class="col-10">
                    <label for="id" required>Id_Proof:</label>
                </div>
                <div class="col-90">
                    <input type="radio" name="id" value="aadhar" id="aadhar">Aadhar
					<input style="display:none;" type="text" name="Aadhar" id="Aadhar" placeholder="Enter Aadhar number(XXXX XXXX XXXX)" pattern="^[2-9]{1}[0-9]{3}\s[0-9]{4}\s[0-9]{4}$" /><br>
					<input type="radio" name="id" value="voter_id" id="voter_id">Voter_Id
					<input style="display:none;" type="text" name="Voter_id" id="Voter_id" placeholder="Enter Voter Id" pattern="[A-Z]{3}[0-9]{7}"/><br>
					<input type="radio" name="id" value="passport" id="passport">Passport
					<input style="display:none;" type="text" name="Passport" id="Passport" placeholder="Enter Passport number(eg: A2096457)" pattern="[A-Z]{1}[0-9]{7}"/><br>
					<input type="radio" name="id" value="license" id="license">License
					<input style="display:none;" type="text" name="License" id="License" placeholder="Enter License number(eg: TS80658975481254)" pattern="[A-Z]{2}[0-9]{2}[0-9]{4}[0-9]{4}[0-9]{4}"/><br><br>
					
					<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
					<script>
				        $(document).ready(function() {
				            $("input[type='radio']").change(function() {
				                if ($(this).val() == "aadhar") {
				                    $("#Aadhar").show();
				                } else {
				                    $("#Aadhar").hide();
				                }
				            });
				        });
				        
				        $(document).ready(function() {
				            $("input[type='radio']").change(function() {
				                if ($(this).val() == "voter_id") {
				                    $("#Voter_id").show();
				                } else {
				                    $("#Voter_id").hide();
				                }
				            });
				        });
				        
				        $(document).ready(function() {
				            $("input[type='radio']").change(function() {
				                if ($(this).val() == "passport") {
				                    $("#Passport").show();
				                } else {
				                    $("#Passport").hide();
				                }
				            });
				        });
				        
				        $(document).ready(function() {
				            $("input[type='radio']").change(function() {
				                if ($(this).val() == "license") {
				                    $("#License").show();
				                } else {
				                    $("#License").hide();
				                }
				            });
				        });
				    </script>
				    
				    
                </div>
            </div>
            
            
            <div class="row">
                <input type="submit" value="Register">
                <input type="reset" value="Reset">
            </div>  
        </div> 
</form>
   

<%
try
{
String name=request.getParameter("name");
String email=request.getParameter("email");
String number=request.getParameter("mobile");
String age=request.getParameter("age");
String mid=request.getParameter("mid"); 

String date=request.getParameter("date");
String price=(String)session.getAttribute("price");
int p=Integer.parseInt(price);
int pri=0;



String gender="",sel,place="",sel1,id="",idname="",sl,slot="",sel2;
if(request.getParameter("gender")!=null){
	sel=request.getParameter("gender");
	if(sel.equals("Male"))
		gender+="Male";
	else if(sel.equals("Female"))
		gender+="Female";
	else if(sel.equals("Others"))
		gender+="Others";
}

if(request.getParameter("slot")!=null){
	sl=request.getParameter("slot");
	if(sl.equals("slot-1"))
		slot+="Slot-1";
	else if(sl.equals("slot-2"))
		slot+="Slot-2";
	
}


if(request.getParameter("id")!=null){
	sel1=request.getParameter("id");
	if(sel1.equals("aadhar"))
		idname+="Aadhar";
	else if(sel1.equals("voter_id"))
		idname+="Voter_id";
	else if(sel1.equals("passport"))
		idname+="Passport";
	else if(sel1.equals("license"))
		idname+="License";
}

if(request.getParameter("res")!=null){
	sel2=request.getParameter("res");
	if(sel2.equals("Indian")){
		place+="Indian";
		pri=p;
	}
	else if(sel2.equals("NRI")){
		place+="NRI";
		pri=(p*5);
	}
}

if(request.getParameter("Aadhar")!=null){
	id+=request.getParameter("Aadhar");
	
}
if(request.getParameter("Voter_id")!=null){
	id+=request.getParameter("Voter_id");
	
}
if(request.getParameter("Passport")!=null){
	id+=request.getParameter("Passport");
	
}
if(request.getParameter("License")!=null){
	id+=request.getParameter("License");
	
}



Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticketless", "root", "Sreyas@2002");
Statement st=conn.createStatement();

 st = conn.createStatement();
 String sql ="insert into visitor(name,age,nationality,gender,id,id_proof,contact,email,mid,date,slot,price) values('"+name+"','"+age+"','"+place+"','"+gender+"','"+idname+"','"+id+"','"+number+"','"+email+"','"+session.getAttribute("mid")+"','"+date+"','"+slot+"','"+pri+"')";
 st.executeUpdate(sql); 
 
 //for qr generation
 String mob1=request.getParameter("mobile");
 session.setAttribute("mob2",mob1);
 out.println(Dyn_QR.s(mob1));
 


  out.println("Data is successfully inserted!");
  %>
  <br><a href="ticket.jsp">View Ticket</a><br>
  <br><a href="Upd1.jsp">Update Details</a><br>
  <button type="button" name="back" onclick="history.back()">back</button>
  <%

}
catch(Exception ex)
{
%><h2>


<% out.println("Fill the above details");%>
</h2>
<% 
ex.printStackTrace();
}
%>



</body>
</html>