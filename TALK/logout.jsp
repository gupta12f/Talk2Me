
<%@ page import="sukhwinder.chat.*" errorPage="error.jsp" %>

<HTML>
<HEAD>
<TITLE>You are LOGGED OUT </TITLE>
 <link rel="shortcut icon" href="favicon.ico">
    <link href='http://fonts.googleapis.com/css?family=Henny+Penny' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Press+Start+2P' rel='stylesheet' type='text/css'>
    <style>
        html {
        background: url(back2.jpg) no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
        }
        td {
          font-family: 'Press Start 2P', serif;
          font-size: 15px;
          text-shadow: 5px 5px 5px #aaa;
        }
    </style>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/chat.css">

</HEAD>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Chat Messenger</title>
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
<BODY>

<BODY>
<%@ include file="header.jsp" %>
<div align="center">
<center>

<%
    String nickname = (String)session.getAttribute("nickname");
    if (nickname != null && nickname.length() > 0)
    {
        ChatRoomList roomlist = (ChatRoomList) application.getAttribute("chatroomlist");
        ChatRoom chatRoom = roomlist.getRoomOfChatter(nickname);
        chatRoom.addMessage(new Message("system", nickname + " has logged out.", new java.util.Date().getTime()));
        if ( chatRoom != null)
        {
            chatRoom.removeChatter(nickname);
            session.invalidate();
            out.write("<br><br><br><br><br><br><br><br><td><font color=\"red\" style=\"font-family:\"Press Start 2P\";\">You successfully logged out</font><br>");
            out.write("<a href=\"indexind.jsp\">Login again</a></td>");
        }
        else
        {
            //out.write("<h3><font color=\"red\">Unable to logout</font></h3>");
            response.sendRedirect("indexind.jsp");
        }
    }
    else
    {
        response.sendRedirect("indexind.jsp");
    }
    %>
</center>
</div>
</BODY>
</HTML>
