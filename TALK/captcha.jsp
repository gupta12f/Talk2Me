<%@ page import="java.io.*" %>
<%@ page import="java.awt.*"%>
<%@ page import="java.awt.image.*"%>
<%@ page import="javax.imageio.ImageIO"%>
<%@ page import="java.util.*"%>
<%@ page errorPage="error.jsp" %>
<%
String capstr = (String)session.getAttribute("capstr");
String code = (String)request.getParameter("code");

 out.println(capstr);
 out.println(code);
 out.println(code.equals(capstr));
 if(code.equals(capstr))
       {
        try{
			   response.sendRedirect("indexind.jsp");
	        }
			
	    catch(Exception e)
	        {
	           out.println(e.getMessage());
	        }
    }
  else
    {
      response.sendRedirect("index.jsp");
    }
	
%>
