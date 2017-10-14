<%@ page import="java.sql.*"%>
<%@ page errorPage="error.jsp" %>
<HTML>
<HEAD>
<TITLE>VIEW PROFILE</TITLE>
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

   
   String mailid=session.getAttribute("mailid").toString();  

         
                  				
   try
       {
          Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con=DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","system");
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select * from crudind where mailid='"+mailid+"'" );
          rs.next();
          
          out.println("<td>Password</td>  <td>:</td> "+rs.getString("password")+"<br><br>");
          out.println("<td>Firstname</td>  <td>:</td> "+rs.getString("firstname")+"<br><br>");
          out.println("<td>Lastname</td>  <td>:</td> "+rs.getString("lastname")+"<br><br>");
          out.println("<td>Contact</td>  <td>:</td> "+rs.getString("contact")+"<br><br>");
          out.println("<td>Mailid</td>  <td>:</td> "+rs.getString("mailid")+"<br><br>");
          st.close();
          con.close();
		  
       }
   catch(Exception e)
       {
          out.println(e.getMessage());
       }
	   	
	   
%>
<div align="center">
<center>
<form name="closing">
    <input type="button" onClick="window.close()" value="Close">
</form>
</center>
</div>