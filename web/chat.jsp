<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="base.Cntlr"%>
<%@page import="base.LogB"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Chat Page</title>
                                        <!-- All css for design -->
<style type="text/css">
.ChatWindowCSS {
        resize: none;
	height: 450px;
	width: 1200px;
        background: rgba(255,255,255,0.2);
        color:gold;
        font-weight: bolder;
        font-size: large;
}

.OnlineUsersCSS {
        resize: none;
	height: 450px;
	width: 200px;
        background: rgba(255,255,255,0.2);
        color:goldenrod;
        font-weight: bolder;
        font-size: large;
        position: absolute;
        right:15em;
        text-align: center;
}

.ChatMsgCSS {
        resize: none;
	height: 100px;
	width: 1200px;
        background: rgba(255,255,255,0.2);
        color: silver;
        font-weight: bolder;
        font-size: large;
}

.tab{
        position: absolute;
        left: 20em;
        background: rgba(255,255,255,0);
        font-size: x-large;
}

.tab1{
        position: absolute;
        right:12em;
        background: rgba(255,255,255,0);
        font-size: x-large
}

.backgr {
        background-image: url(images/chat_back.jpg);
}

.foot{
        color:whitesmoke;
        text-align: center;
        margin-top: 0em;
}
         .TimeDateCSS{
        color: silver;
        text-align: right;
        background: rgba(255,255,255,0);
        font-weight: bolder;
        font-size: large;
        position: absolute;
        right:0em;
        resize: none;
        border: none;
}
</style>

                                        
                         <!-- Tried Coding to refresh only part page, but failed. Hence temporarily refreshing entire page
<script type="text/javascript"       src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.0/jquery.min.js"></script>

<script type="text/javascript">

var auto_refresh = setInterval(
function () {
    //jQuery.removeData();
    var divClone = $("#getdata").clone(); 
    //$("#getdata").html(chat.jsp)
    $('#getdata').load('chat.jsp');
    element.style.display = 'none';
    element.style.display = 'block';
    $("#getdata").replaceWith(divClone);
    
    }, 1000);
    </script>-->

                                            <!--Script for Time-->
<script>
var myTimeVar=setInterval(function(){myTimer()},1000);
function myTimer()
{
var d=new Date();
var t=d.toLocaleTimeString();
document.getElementById("showtime").innerHTML=t;
}
</script>

                                            <!--Script for Date-->
<script>
var myDateVar=setInterval(function(){myDateShower()},1000);
function myDateShower()
{
//var da=new Date();
//var ta=da.toLocaleDateString();
//document.getElementById("showdate").innerHTML=ta;
var d = new Date();
    var curr_date = d.getDate();
    var curr_month = d.getMonth() + 1; //Months are zero based
    var curr_year = d.getFullYear();
    var ta=curr_year+"-"+curr_month+"-"+curr_date;
    document.getElementById("showdate").innerHTML=ta;
}//out.println("Date: "+myDateString);
</script>

</head>

<body class="backgr" >
                                            <!--Online User Name-->
    <div style="float: right;"><font size="5" color="green"><b>Hello <%String name=request.getParameter("uname"); out.print(name);%>!</font></b></div><br><br>
               
                                            <!--Logout Button-->
        <form action="LogoutServlet"  method="get"> 
    <%session.setAttribute("delname", name);%>
    <input type="submit" style="float: right;" name="logout" id="logout" value="Logout"/>
        </form>
    <br><br>
    
                                            <!--Main Page Coding-->
    <span class="tab"><font color="gold"><b>Chat Window</b></font></span> <span class="tab1"><font color="gold"><b>Online Users</b></font></span><br><br>
    <div id="getdata">
    <textarea name="ChatWindow" readonly="readonly" class="ChatWindowCSS" id="ChatWindow">


<%                                           //Code for refreshing page
    response.setHeader("Refresh","10");%>


<%                                          //Code For Chatting Window
String csend;
String cchat;
String crec;

    Connection ccon =null;
    try {
			Class.forName("com.mysql.jdbc.Driver");
	} 
    catch (ClassNotFoundException e) {
            	e.printStackTrace();
		}
    try {
        ccon =DriverManager.getConnection("jdbc:mysql://localhost:3308/userdb","mirhawk","apache");
	} 
    catch (SQLException e) {
           		   e.printStackTrace();
                           }		
    
    String cquery;
    try {        
         Statement cstmt = (Statement) ccon.createStatement();
//         cquery = "SELECT * from userchat";
         cquery="SELECT * FROM userchat WHERE dtm >= CURDATE()";
         cstmt.executeQuery(cquery);
         ResultSet rs = cstmt.getResultSet();
         while(rs.next()){
         csend = rs.getString("sender");
         cchat = rs.getString("chatdata");
         crec = rs.getString("recv");
         out.println();
         if(csend.equals(name))
                              {
                              out.print("Me");
                              }
         else
             {
             out.print(csend);
             }
         out.print(":");
         out.print(cchat);
                        }
         }
    catch (SQLException e) {
                           // TODO Auto-generated catch block
                           e.printStackTrace();
                           }    
%>
         </textarea>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
         
                                                <!--Online User List-->
  <textarea name="OnlineUsers" readonly="readonly" class="OnlineUsersCSS" id="OnlineUsers">

<%                                              ////Code For Online users
    String dbUsername;
    Connection con =null;
    try {
	Class.forName("com.mysql.jdbc.Driver");
	} 
    catch (ClassNotFoundException e) {
                                	e.printStackTrace();
                                     }
    
    try {
        con =DriverManager.getConnection("jdbc:mysql://localhost:3308/userdb","mirhawk","apache");
        } 
    catch (SQLException e) {
                           e.printStackTrace();
                           }		
    
    String query;
    try {        
        Statement stmt = (Statement) con.createStatement();
        query = "SELECT * from useronline";
        stmt.executeQuery(query);
        ResultSet rs = stmt.getResultSet();
        while(rs.next()){
                        dbUsername = rs.getString("usronline");
                        if(!dbUsername.equals(name))
                                                    {
                                                    out.println(dbUsername);
                                                    }
                        }
        }
        catch (SQLException e) {
                                // TODO Auto-generated catch block
                                e.printStackTrace();
                                }    
%>
  </textarea>
  </div>
  
    
<br><br>
                                            <!--Sending Chat for database-->
<form action="ChatSend?"  method="get"> 
    
<%                                          //Sending name of online user
    session.setAttribute("uname", name);%>
              
<textarea name="ChatMe" class="ChatMsgCSS" id="ChatMessage" value="ChatMessage"></textarea>
    <br><br>
    <!--This is comment//sql = "Select sum(amt) as tot From trig where dt >= '" & dtm & "' AND Trans LIKE 'withdraw'"-->
    <input type="submit" name="send" id="send" value="Send" />
    
    
                                            <!--Displaying Dynamic Time-->
    <textarea name="showtime" class="TimeDateCSS" readonly="readonly" id="showtime"></textarea>  
    
                                            <!--Displaying Dynamic Date-->
    <br><textarea name="showdate" class="TimeDateCSS" readonly="readonly" id="showdate"></textarea>  
</form>
<br><br><br>
                                            <!--Footer Notice-->
    <div class="foot">This site is best viewed in Google Chrome and at 1920x1080 resolution. This website requires Java Script Enabled.</div>

</body>
</html>