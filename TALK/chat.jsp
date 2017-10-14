
<%@ page session="true" import="sukhwinder.chat.ChatRoomList, sukhwinder.chat.ChatRoom" errorPage="error.jsp"%>
<%
    String nickname = (String)session.getAttribute("nickname");
    if (nickname != null && nickname.length() > 0)
    {
        ChatRoomList roomList = (ChatRoomList) application.getAttribute("chatroomlist");
        ChatRoom room = roomList.getRoomOfChatter(nickname);
        String roomname = room.getName();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Talk To Me</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.6.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Adamina_400.font.js"></script>
<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="js/script.js" ></script>
<script type="text/javascript" src="js/kwicks-1.5.1.pack.js" ></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>

</head>
<HTML>
<HEAD>
<TITLE>Talk To Me owned by Inder-  - <%=nickname%> (<%=roomname%>) </TITLE>

<link rel="shortcut icon" href="favicon.ico">

<style>

td {
font-family: 'Press Start 2P', serif;
font-size: 15px;
text-shadow: 5px 5px 5px #aaa;
}
</style>
</HEAD>

<FRAMESET rows="80%,20%">
<FRAME SRC="displayMessages.jsp#current" name="MessageWin">
<FRAME SRC="sendMessage.jsp" name="TypeWin">
</FRAMESET>
<NOFRAMES>
<H2>This chat rquires a browser with frames support</h2>
</NOFRAMES>
</HTML>
<%
}
else
{
    response.sendRedirect("indexind.jsp");
}
%>
