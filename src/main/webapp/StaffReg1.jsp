<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Signup Page</title>
        
        <style>
        	*{box-sizing: border-box;
			}
			input[type=text], input[type=email], input[type=number], input[type=select], input[type=date],input[type=select],input[type=password], input[type=tel]
			{
			    width: 45%;
			    padding: 12px;
			    border: 1px solid rgb(168, 166, 166);
			    border-radius: 4px;
			    resize: vertical;
			}
			textarea{
			    width:45%;
			    padding: 12px;
			    border: 1px solid rgb(168, 166, 166);
			    border-radius: 4px;
			    resize: vertical;
			}
			input[type=radio],input[type=checkbox]{
			    width: 1%;
			    padding-left: 0%;
			    border: 1px solid rgb(168, 166, 166);
			    border-radius: 4px;
			    resize: vertical;
			}
			h1{
			    font-family: Arial;
			    font-size: medium;
			    font-style: normal;
			    font-weight: bold;
			    color: brown;
			    text-align: center;
			    text-decoration: underline;
			}
			label{
			    padding: 12px 12px 12px 0;
			    display: inline-block;
			}
			input[type=submit] {
			    background-color: #4CAF50;
			    color: white;
			    padding: 12px 20px;
			    border: none;
			    border-radius: 4px;
			    cursor: pointer;
			    float:left;
			    margin-top: 25px;
			}
			input[type=submit]:hover {
			background-color: #32a336;
			}
			.container{
			    border-radius: 5px;
			    background-color:#f2f2f2;
			    padding: 20px;
			}
			.col-10{
			    float: left;
			    width:10%;
			    margin-top: 6px;
			}
			.col-90{
			    float: left;
			    width: 90%;
			    margin-top: 6px;
			}
			.row:after{
			    content: "";
			    display: table;
			    clear: both;
			}
			@media screen and (max-width: 600px) {
			    .col-10,.col-90,input[type=submit]{
			        width: 100%;
			        margin-top: 0;
			    }
			}
        </style>
    </head>
    
    <body>
        <form method="post" action="write.jsp">
            <h1>Registaration Form</h1>
        <div class="container">
        
            <div class="row">
                <div class="col-10">
                    <label for="sname">Name:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="sname" name="sname" placeholder="Enter your first name">
                </div>
            </div>
                  
            <div class="row">
                <div class="col-10">
                    <label for="smobile">Mobile:</label>
                </div>
                <div class="col-90">
                    <input type="tel" id="smobile" name="smobile" placeholder="only 10 digits are allowed">
                </div>
            </div>
            
            <div class="row">
                <div class="col-10">
                    <label for="des">Designation:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="des" name="des">
                </div>
            </div>
            
            <div class="row">
                <div class="col-10">
                    <label for="hno">H_no:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="hno" name="hno">
                </div>
            </div>
            
            <div class="row">
                <div class="col-10">
                    <label for="pincode">Area PIN:</label>
                </div>
                <div class="col-90">
                    <input type="number" id="zip" name="zip" maxlength="6">
                </div>
            </div>
            
            <div class="row">
                <div class="col-10">
                    <label for="street">Street:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="street" name="street">
                </div>
            </div>
            
              <div class="row">
                <div class="col-10">
                    <label for="city">City:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="city" name="city" maxlength="10">
                </div>
            </div>
            
            <div class="row">
                <div class="col-10">
                    <label for="state">State:</label>
                </div>
                <div class="col-90">
                    <input type="text" id="state" name="state">
                </div>
            </div>
            
            
            <div class="row">
                <input type="submit" name="ok" value="Register">
            </div>  
        </div>
        </form>
    </body>

    </html>