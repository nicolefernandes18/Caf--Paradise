<%-- 
    Document   : Login
    Created on : 17 Oct, 2017, 5:57:57 PM
    Author     : Fascel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.


-->
<html>
    <head>
        <title>Café Paradise</title>
        <meta charset="UTF-8">
        <link rel="icon" href="images/cafe2.jpg" type="image/x-icon">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"  type="text/css" href=" style.css">
        
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <style>
            p{
                 font-size: 25px;
                   font-family: Times New Roman Georgia;
                   color:#ffc112;
                   
            }
            
     .container .right a
   {
       
       padding-top:30px;
       padding-left:20px;
       margin-left: 20px;
       margin-top:30px;
       color: #000000;
   }
            
           
        </style>
    </head>
    <body>
        <div><h1> LOGIN</h1></div>
        <div class="container">
                        <div class="left"> 
                            <img src="cafe.jpg">
                        </div>
                        <div class="right">
                            <form action="LoginServlet.do" method="post">
                <p>Username</p>
                <input type="text" placeholder="Enter Username" name="uname" required>

                <p>Password</p>
                <input type="password" placeholder="Enter Password" name="psw" required><br><br>
                
                <button style="font-family:Times New Roman;font-size: 20px " type="submit">Login</button>
                      
                <a href="forgotpassword.jsp" style="font-size: 18px;;color: #ffcc33" >Forgot Password ?</a> <br><br><br>
                           
              
                <button type="button" class="btn btn-primary" style="margin-left:40px"><a  class="button" href="register.jsp" style="font-size:20px;color: #ff9900" ><b>Create your Account<br>(Register)</b></a></button>
                            </form>
            </div>

        </div>
    </body>
</html>
