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
<form action="Cntlr" method="get">
		UserName: <input type="text" name="un"> <br>
		Password:<input type="password" name="pwd"> <br>
                <input type="submit" value="submit">
                
                
                
                
</form>
</body>
</html>