<%@ page import="java.io.*" %>
<%@ page import="java.awt.*"%>
<%@ page import="java.awt.image.*"%>
<%@ page import="javax.imageio.ImageIO"%>
<%@ page import="java.util.*"%>
<%@ page errorPage="error.jsp" %>
<head>
<title>Talk To ME</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.6.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Adamina_400.font.js"></script>
<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="js/script.js" ></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>

</head>
<body id="page4">
<div class="bg1">
  <div class="bg2">
    <div class="main">
      <!-- header -->
      <header>
        <h1><a href="indexind.jsp" id="logo">Talk to ME</a></h1>
        
      </header>
      <div class="box">
        <nav>
          <ul id="menu">
            <li><a href="indexind.jsp">LOGIN</a></li>
            <li class="active"><a href="add-accountind.jsp">ADD USER</a></li>
            
          </ul>
        </nav>
        <!-- header end -->
        <!-- content -->
        <article id="content">
          <div class="box1">
            <div class="wrapper">
              <form action="add-actionind.jsp" id="form1">
                <h2>ADD USER</h2>
                <fieldset>
                
                  <form name="add-actionind" method="post">
<table	>

<tr>
<td>PASSWORD</td>
<td> </td>
<td><input type=password name=password></td>
</tr>
<tr>
<td>RE-PASSWORD</td>
<td> </td>
<td><input type=password name=repassword></td>
</tr>
<tr>
<td> FIRST NAME</td>
<td> </td>
<td><input type=text name=firstname></td>
</tr>
<tr>
<td> LAST NAME</td>
<td> </td>
<td><input type=text name=lastname></td>
</tr>
<tr>
<td> CONTACT</td>
<td> </td>
<td><input type=text name=contact></td>
</tr>
<tr>
<td> MAIL-ID</td>
<td> </td>
<td><input type=text name=mailid></td>
</tr>



<tr>
<td><input type=submit value="ADD USER" onClick='winopen("index.jsp")'></td>
                                                  
<td></td>
<td><input type=reset value="CLEAR FORM"</td>
</tr>
</table>

                </fieldset>

              </form>
              <div class="col2 pad">
                <h2><img src="images/title_marker1.jpg" alt="">Features of Talk to ME</h2>
                <div class="wrapper line1">
                  <div class="col3">
                    <figure class="pad_bot3"><img src="images/chat.jpg" alt=""></figure>
                    <p class="pad_bot1"><strong class="color3">Private Chatting</strong></p>
                    <p>Talk to ME presents you Privately chatting option with your closed ones.</p>
                    <ul class="list2">
                      <li><span>Add as many you want</span>Chat Rooms :</li>
                      <li><span>Invite as many as you want</span>Chat Friends: </li>
                    </ul>
                    <a href="#" class="button2"> Lets Chat !! </a> </div>
                  <div class="col3 pad_left2">
                    <figure class="pad_bot3"><img src="images/groupchat1.jpeg" alt=""></figure>
                    <p class="pad_bot1"><strong class="color3">Group Chat with Friends</strong></p>
                    <p>Talk to ME presents you Group Chat feature to have a healthy discussion on significant topics.</p>
                    <ul class="list2">
                      <li><span>Add as many you want</span>Chat Rooms :</li>
                      <li><span>Invite as many as you want</span>Chat Friends: </li>
                    </ul>
                    <a href="#" class="button2">Lets Chat !!</a> </div>
                </div>
              </div>
            </div>
          </div>
         
        </article>
        <!--content end-->
      </div>
    </div>
  </div>
</div>
<div class="main">
  <!-- footer -->
  <footer>
    
    <!-- {%FOOTER_LINK} -->
  </footer>
  <!-- footer end -->
</div>
<script type="text/javascript">Cufon.now();</script>

</html> 