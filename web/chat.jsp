<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="base.Cntlr"%>
<%@page import="base.LogB"%>




<!-- All css for design -->


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Chat Page</title>
<style type="text/css">
.ChatWindowCSS {
        resize: none;
	height: 450px;
	width: 1200px;
        background: rgba(255,255,255,0.5);
}

.OnlineUsersCSS {
        resize: none;
	height: 450px;
	width: 200px;
        background: rgba(255,255,255,0.5);
}

.ChatMsgCSS {
        resize: none;
	height: 100px;
	width: 1200px;
        background: rgba(255,255,255,0.5);
}
.tab{
    position: absolute;
    left: 5em;
    background: rgba(255,255,255,0.5);
}
.tab1{
    position: absolute;
    right:18em;
    background: rgba(255,255,255,0.5);
}
    .backgr {
                background-image: url(images/chat_backnew.jpg);
                }
                     

</style>
<!--
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

</head>

<body class="backgr">
    
    <div style="float: right;"><font size="5" color="green"><b>Hello <%String name=request.getParameter("uname"); out.print(name);%>!</font></b></div><br><br>
        
    
    <input type="submit" style="float: right;" name="logout" id="logout" value="Logout"/><br><br><br><br>
                    
             <span class="tab"><b>Chat Window</b></span> <span class="tab1"><b>Online Users</b></span><br>
         <div id="getdata">
         <textarea name="ChatWindow" readonly="readonly" class="ChatWindowCSS" id="ChatWindow">
<%     //Code for refreshing page
    response.setHeader("Refresh","10");
////Code For Chatting Window
    
String csend;
String cchat;
String crec;

//Cntlr cnt =new Cntlr();
//name=cnt.SendName();



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
                    cquery = "SELECT * from userchat";
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
  <textarea name="OnlineUsers" readonly="readonly" class="OnlineUsersCSS" id="OnlineUsers">

<% 
////Code For Online users
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
          <form action="ChatSend?"  method="get"> 
              <%session.setAttribute("uname", name);
              /*  RequestDispatcher dispatcher = request.getRequestDispatcher(ChatSend);
            if (dispatcher != null){
            dispatcher.forward(request, response);
            } */
              
              %>
              
    <textarea name="ChatMe" class="ChatMsgCSS" id="ChatMessage" value="ChatMessage"></textarea>
  
  <br><br>
          <!--This is comment//sql = "Select sum(amt) as tot From trig where dt >= '" & dtm & "' AND Trans LIKE 'withdraw'"-->
          
       
    <input type="submit" name="send" id="send" value="Send" />
          </form>
    
  


</body>
</html>
