<%-- 
    Document   : index
    Created on : Feb 21, 2014, 4:14:54 PM
    Author     : Mirhawk
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>


 <script type="text/javascript">
//Script for resolution of browser
document.write(screen.width+'x'+screen.height);
</script> 
<script>   
//script for changing color of register link
window.onload = function() {
    
  document.getElementById('mylink').onclick = function() {
    this.style.color = 'green';
   }
   document.getElementById('mylink').onmouseover = function() {
    this.style.color='blue';
    }
    document.getElementById('mylink').onmouseout = function() {
    this.style.color='dodgerblue';
    }
   }
</script> 
<script>      
   
   //Script fot changing color of heading
   function() {
    var s = document.getElementById('headingDIV').font,
        f = false,
        c1 = '#000000',
        c2 = '#ffffff';

    setInterval(function() {
        s.color = f ? c2 : c1;
        f = !f;
    }, 500);
}
</script>

<html>
<head>
   
<!-- All css for design -->
<style type="text/css">
        .txtcss {
                border :0 px;
                }   
                
        .tab    {
                background-image: url(images/tabback.jpg);
                width: 390px;
                height: 100px;
                margin-left:auto;
                margin-right:auto;
                background: rgba(255,255,255,0);
                border: 2px;
                }
                
        .btntab {
                width: 400px;
                height: 100px;
                margin-left:auto;
                margin-right:auto;
                border : 0px white;
                font: bold;
                font-size : large;
                }
                
        .btnsize{ 
                width:120px;
                height:40px;
                background: rgba(255,255,255,0.18);
                font-style: italic;
                font-weight: bold;
                font-size: large;                
                }
        
        .backgr {
                background-image: url(images/elegant.jpg);
                } 
                
        .NewUser{
                font: bold;
                font-size : x-large;
                }
        .txtstyle{
                width: 220px;
                height: 25px;
                background: rgba(255,255,255,0.18);
                border: 0 px ;
                }
                     
</style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chat Login</title>
</head>

<!--<body class="back">-->
<body class="backgr">
    <!-- For New User -->

    <div align="right" class="NewUser">
        <a href="Register.jsp" id="mylink"><strong>New User? Register!</strong></a>
    </div>
    <br>
    <div id="headingDIV"><h1 align='center'><font size='16' color='darkgray'><i>Chat System </i></font></h1></div>
    
    <br><br><br><br><br><br><br>
    <div>
        
<!-- Table for login -->
<form  class="btntab" action="Cntlr"  method="get">
<table class="tab">
    <tr>
        <td align="center"><font size="6"><i><b>UserName:&nbsp;&nbsp;</b></i></font></td>
        <td align='center'><input type="text" name="un" class='txtstyle'></td>
    </tr>
    <tr>
        <td align="center"><font size="6"><i><b>Password:&nbsp;&nbsp;</b></i></font></td>
        <td align='center'><input type="password" name="pwd" class='txtstyle' ></td>
    </tr>
</table>

    <br>

<!-- Table for alligning buttons-->
<table>
    <tr>
        <td width="210" align ="center"><input type="submit" class="btnsize" value="Submit" ></td>
        <td width="210" align ="right"><input type="reset" class="btnsize" value="Reset"></td>
    </tr>
</table>
    </form>  


</body>
</html>