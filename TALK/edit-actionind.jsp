<%@ page import="java.sql.*"%>
<%@ page errorPage="error.jsp" %>

<%
		
		String password=request.getParameter("password");
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String contact=request.getParameter("contact");
		String mailid=request.getParameter("mailid");
		try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","system");
				
				Statement st=con.createStatement();
				st.executeQuery("update crudind set password='"+password+"',firstname='"+firstname+"', lastname='"+lastname+"', contact='"+contact+"'  where mailid='"+mailid+"'");
			 	out.println("updated successfully");
			
			
			
               				
		    }
	    catch(Exception e)
				{
					out.println(e.getMessage());
				}
				
%>				