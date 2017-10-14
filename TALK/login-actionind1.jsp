<%@ page import="java.sql.*"%>
<%@ page errorPage="error.jsp" %>
<%
String mailid=request.getParameter("mailid");
String password=request.getParameter("password");

  try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","system");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from crudind");
        int flag=0;
        while(rs.next())
          {
            String dbmailid=rs.getString("mailid");
            String dbpassword=rs.getString("password");

            if(mailid.equals(dbmailid) && password.equals(dbpassword)) 
               {
                    session.setAttribute("mailid",mailid);
                    flag=1;
                    break;
               }
          }
        if(flag==1)
          {
            
            out.println("<br><br>");
           response.sendRedirect("login.jsp");
            
          }
        else
          {
            response.sendRedirect("indexind.jsp");
          }
		  st.close();
	      con.close();
    }
  catch(Exception e)
    {
				out.println(e.getMessage());
    }
		
%>
