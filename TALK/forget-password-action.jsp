<%@ page import="java.sql.*"%>
<%@ page errorPage="error.jsp" %>
<%

  
  String contact=request.getParameter("contact");
  String mailid=request.getParameter("mailid");
   try
       {
          Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con=DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","system");
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select * from crudind where mailid='"+mailid+"'" );
		  int flag=0;
          rs.next();
		  
          
          String dbcontact=rs.getString("contact");
		  String dbmailid=rs.getString("mailid");
		  

            if((contact.equals(dbcontact))&&(mailid.equals(dbmailid)))
               {    session.setAttribute("mailid",mailid);
                    flag=1;
                   
               }
		  if(flag==1)
           {
              response.sendRedirect("change-password.jsp");
              
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
