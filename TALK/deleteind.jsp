<%@ page import="java.sql.*" %>
<%@ page errorPage="error.jsp" %>
<%
	 String mailid=session.getAttribute("mailid").toString();
	try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","system");
            Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery("delete from crudind where mailid='"+mailid+"'");
					
			response.sendRedirect("indexind.jsp");
			
			
						
		
			st.close();
			con.close();
			
			
		}
	catch(Exception e)
		{	
          out.println(e.getMessage());		
		}
%>