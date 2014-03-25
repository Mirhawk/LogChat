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
</head>

<body>

 <br>
     <span class="tab">Chat Window</span> <span class="tab1">Online Users</span><br>
  <textarea name="ChatWindow" readonly="readonly" class="ChatWindowCSS" id="ChatWindow"></textarea>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<textarea name="OnlineUsers" readonly="readonly" class="OnlineUsersCSS" id="OnlineUsers"></textarea>
    
  <br><br>
    <label for="ChatMessage"></label>
    <textarea name="ChatMessage" class="ChatMsgCSS" id="ChatMessage"></textarea>
  
  <br><br>
    <input type="submit" name="send" id="ok" value="Send" />
    <input type="submit" name="Logout" id="Logout" value="Logout"/>
  


</body>
</html>
