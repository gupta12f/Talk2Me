<%@ page import="java.io.*" %>
<%@ page import="java.awt.*"%>
<%@ page import="java.awt.image.*"%>
<%@ page import="javax.imageio.ImageIO"%>
<%@ page import="java.util.*"%>

<%
int width=90;
int height=50;

Random rdm=new Random();  
int rl=rdm.nextInt();    


        

String hash1 = Integer.toHexString(rl); 



String capstr=hash1.substring(0,5); 

String recapstr=hash1.substring(0,5); 
Color background = new Color(100,14,50); 

Color fbl = new Color(200,140,50);    

Font fnt=new Font("Garamond",2,19);   

BufferedImage cpimg =new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);

Graphics g = cpimg.createGraphics();

g.setColor(background);

g.fillRect(0,0,width,height);

g.setColor(fbl);

g.setFont(fnt);

g.drawString(capstr,10,25);

g.setColor(background);

g.drawLine(10,17,80,17);

g.drawLine(10,22,80,22);


response.setContentType("image/jpeg");

OutputStream strm = response.getOutputStream();

ImageIO.write(cpimg,"jpeg",strm);
strm.close();


session.setAttribute("key",capstr);
session.setAttribute("key",recapstr);
  if(recapstr.equals(capstr))
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
      out.println("CODE DOES NOT MATCH");
    }
%>
