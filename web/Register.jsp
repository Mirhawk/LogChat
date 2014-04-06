<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->


<html>
    <head>
        
        
<!-- All css for design -->
<style type="text/css">
        .back   {
                background-image: url(images/reg_back.jpg);
                }
                
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
                color: white;
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
                
        .txtstyle{
                width: 320px;
                height: 25px;
                background: rgba(255,255,255,0.18);
                border: 0 px ;
                color: white;
                font-weight: bolder;
                font-size: large;
                }
                
        .foot{
                color:whitesmoke;
                text-align: center;
                margin-top: 20em;
                }
</style>
                                                <!--Script for checking Validations-->
<script>
function validateForm()
{
    //Checking for empty Name
var xn=document.forms["myForm"]["name"].value;
if (xn===null || xn==="")
  {
  alert("Name must be filled out!");
  return false;
  }
  
                                    //Checking for empty username
var xu=document.forms["myForm"]["usn"].value;
if (xu===null || xu==="")
  {
  alert("User Name must be filled out!");
  return false;
  }

                                    //Checking for empty Password
var xp=document.forms["myForm"]["pswd"].value;
var pl = xp.length;
if (xp===null || xp==="")
  {
  alert("Password must not be empty!");
  return false;
  }
  
                                  //Checking for Password less than 8 characters
if(pl<8)
  {
  alert("Password must not be of less than 8 characters!");
  return false;
  }
  
                                //Checking for empty password should contain at least one number
                                //Checking with regular expression
var xpn=document.forms["myForm"]["pswd"].value;
var regexNum = /\d/g;// Global check for numbers
var c = regexNum.test(xpn);
if(c===false)
{
    alert("Invalid Password! Password must contain anumber!")
}

                                //Checking for empty password should contain at least one of mentioned symbols
                                //Checking with regular expression
//var xps=document.forms["myForm"]["pswd"].value;
//var regexSymbol = /^[!@#$%*]+$/;
//var c = regexSymbol.test(xps);
//if(c===false)
//{
//    alert("Invalid Password! Password must at least one symbol of !@#$%*")
//}

                               //Checking for empty E mail id
var xem=document.forms["myForm"]["eid"].value;
if (xem===null || xem==="")
  {
  alert("E Mail id name must be filled out!");
  return false;
  }

                               //Checking for valid E mail id
var xe=document.forms["myForm"]["eid"].value;
var atpos=xe.indexOf("@");
var dotpos=xe.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=xe.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }
}
</script>


<title>Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
</head>
  
<body class="back">
<br>
<div id="headingDIV"><h1 align='center'><font size='16' color='darkgray'><i>Register</i></font></h1></div>

    <br><br><br><br><br><br><br><br><br>
    <form name="myForm" onsubmit="return validateForm()" action="Reg" method="get">
                                                        <!-- Table for Register -->        
<table class="tab" border="4" >
    
    <tr>
        <td align="center"><font size="5"><i><b>Name:</b></i></font></td>
        <td><input type="text" name="name" class="txtstyle"></td>c
    </tr>

    <tr>
        <td align="center"><font size="5"><i><b>UserName:</b></i></font></td>
        <td><input type="text" name="usn" class="txtstyle"></td>
    </tr>
   
     <tr>
        <td align="center"><font size="5"><i><b>Password:</b></i></font></td>
        <td><input type="password" name="pswd" class="txtstyle"></td>
    </tr>
    
    
    <tr>
        <td align="center"><font size="5"><i><b>Email id:</b></i></font></td>
        <td><input  type="text" name="eid" class="txtstyle"></td>
    </tr>
</table>

    <br>  

                                            <!-- Table for alligning buttons-->

<table align="center">
    
    <tr>
        <td width="210" align ="center"> <input type="submit" class="btnsize" value="Submit" ></td>
    </tr>
    
</table>
    </form>  

	                                                    <!-- Footer Notice-->
    <div class="foot">This site is best viewed in Google Chrome and at 1920x1080 resolution. This website requires Java Script Enabled.</div>	
</body>
</html>