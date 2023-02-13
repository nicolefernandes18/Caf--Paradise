<%-- 
    Document   : Upload
    Created on : 22-Oct-2017, 14:18:43
    Author     : JAMES DSOZA
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload to Database Demo</title>
</head>
<body>
    <center>
        <h1>Submit Recipe</h1>
        <form method="post" action="FileUploadDBServlet.do" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Chef Name: </td>
                    <td><input type="text" name="chefName" size="50"/></td>
                </tr>
                <tr>
                    <td>Recipe Name: </td>
                    <td><input type="text" name="recipeName" size="50"/></td>
                </tr>
                <tr>
                    <td>Recipe File: </td>
                    <td><input type="file" name="file" size="50"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
