<%@include file="classes/user.jsp"%>
<%@include file="classes/template.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page errorPage="error.jsp" %>
<HTML>
<HEAD>
<TITLE>Profile Pic</TITLE>
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
Template objTemplate =new Template();

String Data="<form method=\"post\" action=\"fileUpload.jsp\" name=\"upform\" enctype=\"multipart/form-data\">"+ 
			"<table width=\"60%\" border=\"0\" cellspacing=\"1\" cellpadding=\"1\" align=\"center\" class=\"style1\">"+   
			"<tr>"+   
			"<td align=\"left\"><b>Select a file to upload :</b></td>"+   
			"</tr>"+   
			"<tr>"+   
			"<td align=\"left\">"+   
			"<input type=\"file\" name=\"uplodfile\" size=\"50\">"+   
			"</td>"+   
			"</tr>"+   
			"<tr>"+   
			"<td align=\"left\">"+   
			"<input type=\"hidden\" name=\"todo\" value=\"upload\">"+   
			"<input type=\"submit\" name=\"Submit\" value=\"Upload\">"+   
			"<input type=\"reset\" name=\"Reset\" value=\"Cancel\">"+   
			"</td>"+   
			"</tr>"+  
			
			"<tr>"+   
			"<td align=\"left\">"+
			"<img src=\"/chatter/uploads/5C9E9BE4B2EDB9439FD3C5871FCC42C0.jpg\" alt=\"no image\">"+
			"</td>"+
			"</tr>"+
			
			"</table>"+     
			"</form>"+   
			"</body>"+   
			"</html>";
			out.println(objTemplate.genPage(Data,true));
%>

<div align="center">
<center>
<form name="closing">
    <input type="button" onClick="window.close()" value="Close">
</form>
</center>
</div>