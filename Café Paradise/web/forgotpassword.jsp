<%-- 
    Document   : forgotpassword
    Created on : 21 Oct, 2017, 5:57:38 PM
    Author     : Fascel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p style="text-align:center; color:red; font-size:2em;margin-top:250px;">
       <strong>Fill the form given below to change the password : </strong><br><br>
    <center>
            <form action="ChangePasswordServlet.do"   method="post"  >
                Email : <input type="text" name="email"><br><br>
               
                New Password : <input type="password" name="newpassword"><br><br>
             
      <br><br>
      <button type="submit" class="signupbtn" >Submit</button>
            </form>
    </center>    
    </p>
    </body>
</html>
