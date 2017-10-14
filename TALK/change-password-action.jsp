<%@ page import="java.sql.*"%>
<%@ page errorPage="error.jsp" %>
<%

  String password=request.getParameter("password");
  String repassword=request.getParameter("repassword");
  
  if(password.equals(repassword))
    {
        try
            {
	           Class.forName("oracle.jdbc.driver.OracleDriver");
	           Connection con=DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","system");
			   
	           Statement st=con.createStatement();
			   st.executeQuery("update crudind set password='"+password+"',repassword='"+repassword+"'");
	           
			   response.sendRedirect("indexind.jsp");
	        }
	    catch(Exception e)
	        {
	           out.println(e.getMessage());
	        }
    }
  else
    {
      out.println("PASSWORD DOES NOT MATCH");
    }
%>