<%-- 
    Document   : index
    Created on : Feb 21, 2014, 4:14:54 PM
    Author     : Mirhawk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="temp.MyServer" %>
<% MyServer obj1 = new MyServer();
%>

<!DOCTYPE html>

<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chat Login</title>
</head>
<body>
<table border="1" align="center">
  <tr>
    <td>UserName:</td>
    <td><input type="text" name="un"></td>
  </tr>
  <tr>
    <td>Password:</td>
    <td><input type="password" name="pwd"></td>
  </tr>
</table>
    
<form action="Cntlr" method="get">
    <input type="submit" value="submit">
</form>
</body>
</html>