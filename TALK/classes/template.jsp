
<%
final String role=String.valueOf(session.getAttribute("Role"));
         
class Template
 {  
    public  String navMenu()
		{
        
			String menu="<ul id=\"navmenu-h\">"+
						"<li><a href=\"#\">My Profile</a>"+
						"<ul>"+
						
                        "<li><a href=\"profile-pic.jsp\">Add Profile pic</a></li>"+
                       
						"</ul>"+
						"</li>";
      
					
                        menu+="<li><a href=\"logout.jsp\">Logout</a>"+
						"</li>"+
						"</ul>"+"";
                
                
					return menu;
		}
   
    public String genPage(String content,boolean menu)
        {
			if(menu)
				{
					String page="<html><head>"+
								"<link rel=\"stylesheet\" href=\"style/style.css\" type=\"text/css\" media=\"screen\" />"+
								"<script type=\"text/javascript\" src=\"scripts/ajax.js\"></script>"+
								"</head><body>"+
								"<div class=wrapper>"+
								"<div class=head>"+
								"<div class=heading>"+
								
								
								
								"</div>"+
                                navMenu()+"</div>"+
                                "<div class=content>"+content+
                                "</div>"+
                                "<div class=foot>"+
                                
								"</div>"+
								"</div>"+
								"</body>"+
								"</html>"+"";
                                         
					return page;
                }
			else
                {
					String page="<html>"+
								"<link rel=\"stylesheet\" href=\"style/style.css\" type=\"text/css\" media=\"screen\" />"+
								"<body>"+
								"<div class=wrapper>"+
								"<div class=head>"+
								"<div class=heading>"+
								"<h1>Chat Messenger</h1>"+
								"</div>"+
                                "</div>"+
                                "<div class=content>"+content+
                                "</div>"+
                                "<div class=foot>"+
                                
								"</div>"+
								"</div>"+
								"</body>"+
								"</html>"+"";
                                         
                        return page;
                }
       
		}   
	}
%>