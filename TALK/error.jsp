
<%@ page isErrorPage="true" import="java.io.PrintWriter" %>
<HTML>
<HEAD>
<TITLE>Error Occurred</TITLE>

<LINK rel="stylesheet" href="<%=request.getContextPath()%>/chat.css" type="text/css">
</HEAD>
<BODY bgcolor="#FFFFFF">
<h2>Some error occurred</h2>
<pre>
<%
if (exception != null)
{
    //System.out.println("Exception: " +exception.getMessage());
    out.write("<span class=\"error\">Exception: " +exception.getMessage() + "</span><br>");
    exception.printStackTrace( new PrintWriter(out));
}
%>
</pre>
<p>Report to our Team on : "contact@talktoME.com"

</BODY>
</HTML>
