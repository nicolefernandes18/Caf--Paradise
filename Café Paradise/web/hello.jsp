<%-- 
    Document   : hello
    Created on : 17 Oct, 2017, 12:19:51 AM
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
        <h1 align="centre">Welcome to Cafe Paradise!</h1>
        <jsp:useBean id="myBean" scope="page" class="model.Register" />
        <jsp:setProperty name="myBean" property="uname" />
        <jsp:setProperty name="myBean" property="email"  />
        <jsp:setProperty name="myBean" property="address"  />
        <jsp:setProperty name="myBean" property="pincode"  />
        <jsp:setProperty name="myBean" property="mobile"  />
        
        <jsp:setProperty name="myBean" property="psw"  />
        
        <h1>Details</h1>
        <jsp:getProperty name="myBean" property="uname" />
        <jsp:getProperty name="myBean" property="email"  />
        <jsp:getProperty name="myBean" property="address"  />
       <jsp:getProperty name="myBean" property="pincode"  />
        <jsp:getProperty name="myBean" property="mobile"  />
        
         <jsp:getProperty name="myBean" property="psw"  />
        
       
        
    </body>
</html>
