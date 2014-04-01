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
                }
</style>

        <title>Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
</head>
  
<body class="back">
<br>
<div id="headingDIV"><h1 align='center'><font size='16' color='darkgray'><i>Register </i></font></h1></div>

    <br><br><br><br><br><br><br><br><br>
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
    
    <form action="Reg" method="get">
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

		
</body>
</html>