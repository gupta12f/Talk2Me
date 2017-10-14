<DIV align="center">
<CENTER>

    <TR>
        <TD width="100%" align="center">
		<%
        String n = (String)session.getAttribute("nickname");
        if (n != null && n.length() > 0)
        {
            out.write("<a href=\"logout.jsp\">Logout</a><br><br>");
            out.write("<a href=\"listrooms.jsp\">List of rooms</a><br><br>");
			out.write("<a href=\"addRoom.jsp\">Add New Room</a>");
        }
        %> </TD>
    </TR>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<font color="red">Made By INDERDEEP SINGH BHATIA  <br> 
                           SUNMEET SINGH   <br>
                           JASMEET KAUR  <br></font>

</CENTER>
</DIV>
