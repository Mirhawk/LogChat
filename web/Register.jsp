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
        <title>Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
  </head>
  
  <body class="back">



    <form action="Reg" method="get">
        <br><br><br><br><br><br><br><br><br><br>
<!-- Table for Register -->        
        <table class="tab" border="4" >

    <tr>
        <td align="center">Name:</td>
        <td><input type="text" name="name" ></td>
    </tr>

    <tr>
        <td align="center">UserName:</td>
        <td><input type="text" name="usn" ></td>
    </tr>
   
     <tr>
        <td align="center">Password:</td>
        <td><input type="password" name="pswd" ></td>
    </tr>

    <tr>
        <td align="center">Email id:</td>
        <td><input  type="text" name="eid" ></td>
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
