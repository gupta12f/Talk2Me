
<%@ page contentType="text/html" language="java" errorPage="error.jsp" import="sukhwinder.chat.*"%>
<%@ page import="java.sql.*"%>
<HTML>
<HEAD>
<TITLE>FIND</TITLE>
<LINK rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/chat.css">

<SCRIPT language="JavaScript">
     
</SCRIPT>
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
</HEAD>
<BODY>
<%@ include file="header.jsp" %>
</BODY>
</HTML>   

<%
    String submitted = request.getParameter("submitted");
    boolean postBack = false;
    if (submitted != null && "true".equals(submitted))
    {
        postBack = true;
    }
%>
<HTML>
<HEAD>
<TITLE>Find your friend</TITLE>

<LINK rel="stylesheet" href="<%=request.getContextPath()%>/chat.css" type="text/css">
</HEAD>
<BODY>
<%
    if (postBack)
    {
        String nickname = request.getParameter("nickname");
        String roomName = null;
        if (nickname != null && nickname.length() > 0)
        {
            try
            {
                ChatRoomList roomList = (ChatRoomList)application.getAttribute("chatroomlist");
                ChatRoom chatRoom = roomList.getRoomOfChatter(nickname);
                if (chatRoom != null)
                {
                    roomName = chatRoom.getName();
                }
                if (roomName == null)
                {
                    out.write("<h3><i>" + nickname + "</i> not found in any room</h3>");
                }
                else
                {
                    out.write("<h3><i>" + nickname + "</i> is in room " + roomName + "</h2>");
                }

            }
            catch (Exception e)
            {
                out.write("<h1>Some problem with server</h1>");
            }
        }
        else
        {
            out.write("<h4 class=\"error\">Please enter nickname of the person you want to find below</h4>");
        }
    }
%>
<H2>Enter nickname of the person you want to find.</H2>
<FORM action="find.jsp" method="post" name="find" id="find">
<STRONG>Nickname </STRONG>
        <INPUT name="nickname" type="text" id="nickname">
        <INPUT type="hidden" name="submitted" value="true">
        <input type="submit" value="Find">
</FORM>
<div align="center">
<center>
<form name="closing">
    <input type="button" onClick="window.close()" value="Close">
</form>
</center>
</div>
</BODY>
</HTML>
