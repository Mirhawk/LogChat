<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Chat Page</title>
<style type="text/css">
.ChatWindowCSS {
        resize: none;
	height: 400px;
	width: 800px;
}
.ChatMsgCSS {
        resize: none;
	height: 80px;
	width: 500px;
}
.OnlineUsersCSS {
        resize: none;
	height: 400px;
	width: 200px;
}
.tab{
    position: absolute;
    left: 5em;
}
.tab1{
    position: absolute;
    right: 18em;
}
</style>

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
    </script>

</head>

<body>

 <br>
     <span class="tab">Chat Window</span> <span class="tab1">Online Users</span><br>
         <div id="getdata">
         <textarea name="ChatWindow" readonly="readonly" class="ChatWindowCSS" id="ChatWindow">
<%     //Code for refreshing page
   // response.setHeader("Refresh","10");
////Code For Chatting Window
    
String csend;
String cchat;
String crec;
String name=LogB.getName();

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
      
         </textarea>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    <label for="ChatMessage"></label>
    <textarea name="ChatMessage" class="ChatMsgCSS" id="ChatMessage" value="ChatMessage"></textarea>
  
  <br><br>
          <!--This is comment//sql = "Select sum(amt) as tot From trig where dt >= '" & dtm & "' AND Trans LIKE 'withdraw'"-->
         <form action="ChatSend"  method="get"> 
       
    <input type="submit" name="send" id="send" value="Send" />
              </form>
    <input type="submit" name="logout" id="logout" value="Logout"/>
  


</body>
</html>
