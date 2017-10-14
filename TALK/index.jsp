<%@ page import="java.util.*"%>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.*"%>
<%@ page import="java.awt.image.*"%>
<%@ page import="javax.imageio.ImageIO"%>
<%@ page errorPage="error.jsp" %>
<HTML>
<HEAD>
<TITLE>Captcha</TITLE>
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
Random rdm=new Random();  
int rl=rdm.nextInt(); 

String hex=Integer.toHexString(rl);
String capstr=hex.substring(0,5);

out.println(capstr);
session.setAttribute("capstr",capstr);
String code;

%>
<form action="captcha.jsp" method="post">
<table>
<tr>
<td><font color = red >ENTER THE CODE<font></td>
<td>:</td>
<td><input type=text name="code"></td>
</tr>
<tr>
<td><input type=submit value="SUBMIT"</td>
<td></td>
<td><input type=reset value="CLEAR"</td>
</tr>
</table>
</form>