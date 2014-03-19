<%-- 
    Document   : index
    Created on : Feb 21, 2014, 4:14:54 PM
    Author     : Mirhawk
--%>

<%-- 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="temp.MyServer" %>
<% MyServer obj1 = new MyServer();
%>
--%>


<!DOCTYPE html>



<!-- All css for design -->
<style type="text/css">
        .back   {
                background: grey;
                }
        .txtcss {
                border :0 px;
                }   
        .tab    {
                width: 370px;
                height: 100px;
                margin-left:auto;
                margin-right:auto;
                background: darkgray;
                }
        .btntab {
                width: 370px;
                height: 100px;
                margin-left:auto;
                margin-right:auto;
                border : 0px white;
                }
        .btnsize{ 
                width:100px;
                height:30px;
                }
                
</style>

<script>
public function scReg()
{
alert("Registration Successfull!");
}
</script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    

<title>Chat Login</title>
</head>

<body class="back">
    <!-- For New User -->
    <div align="right">
    <a href="Register.html"><strong>New User? Register!</strong></a>
    </div>
    <br><br><br><br><br><br><br><br><br><br>
    <div>
        
<!-- Table for login -->
<form  class="btntab" action="Cntlr"  method="get">
<table class="tab" border="4" >
    <tr>
        <td align="center">UserName:</td>
        <td><input type="text" name="un" ></td>
    </tr>
    <tr>
        <td align="center">Password:</td>
        <td><input type="password" name="pwd" ></td>
    </tr>
</table>

<br>      

<!-- Table for alligning buttons-->


<table>
    <tr>
        
        <td width="210" align ="center"> <input type="submit" class="btnsize" value="Submit" ></td>
        
        <td width="210" align ="center"><input type="reset" class="btnsize" value="Reset"></td>
    </tr>
</table>
    </form>  


</body>
</html>