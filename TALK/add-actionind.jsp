<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.*"%>
<%@ page import="java.awt.image.*"%>
<%@ page import="javax.imageio.ImageIO"%>
<%@ page import="java.util.*"%>
<%@ page errorPage="error.jsp" %>
<%

  String password=request.getParameter("password");
  String repassword=request.getParameter("repassword");
  String firstname=request.getParameter("firstname");
  String lastname=request.getParameter("lastname");
  String contact=request.getParameter("contact");
  String mailid=request.getParameter("mailid");


  if(password.equals(repassword))
    {
        try
            {
	           Class.forName("oracle.jdbc.driver.OracleDriver");
	           Connection con=DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","system");
			   
	           Statement st=con.createStatement();
			   st.executeQuery("insert into crudind values('"+password+"','"+repassword+"','"+firstname+"','"+lastname+"','"+contact+"','"+mailid+"')");
	   
			   response.sendRedirect("index.jsp");
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