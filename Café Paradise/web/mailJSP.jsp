<%-- 
    Document   : mailJSP
    Created on : 21 Oct, 2017, 9:49:32 PM
    Author     : Fascel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

       <%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%
    //Creating a result for getting status that messsage is delivered or not!
    String result;
    // Get recipient's email-ID, message & subject-line from index.html page
    final String to = "fasfdes297@gmail.com";
   
    final String messg = request.getParameter("msg");
    final String custemail = request.getParameter("email");
    
    
    
 
    // Sender's email ID and password needs to be mentioned
    final String from = "fasfdes297@gmail.com";
    final String pass = "SANDRA1997";
 
    // Defining the gmail host
   
 
    // Creating Properties object
    Properties props = new Properties();
 
    // Defining properties
        props.put("mail.smtp.host", "smtp.gmail.com");    
        props.put("mail.smtp.socketFactory.port", "587");    
        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");    
        props.put("mail.smtp.auth", "true");   
        props.put("mail.user", from);
        props.put("mail.password", pass);
        props.put("mail.smtp.port", "587"); 
        props.put("mail.smtp.starttls.enable","true");
              
  
 
    // Authorized the Session object.
    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, pass);
        }
    });
 
    try {
        // Create a default MimeMessage object.
        MimeMessage message = new MimeMessage(mailSession);
        // Set From: header field of the header.
        message.setFrom(new InternetAddress(from));
        // Set To: header field of the header.
        message.addRecipient(Message.RecipientType.TO,
                new InternetAddress(to));
        // Set Subject: header field
    
        // Now set the actual message
         message.setSubject(custemail);
        message.setText(messg);
       
        // Send message
        Transport.send(message);
       
        result = "Your mail sent successfully....";
    } catch (MessagingException e) {
        e.printStackTrace();
        result = "Error: unable to send mail....";
    }
%>
<title>Sending Mail in JSP</title>
<h1><center><font color="blue">Sending Mail Using JSP</font></h1>
<b><center><font color="red"><% out.println(result);%></b>


