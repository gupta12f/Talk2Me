<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="en">
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
<script type="text/javascript" src="js/kwicks-1.5.1.pack.js" ></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>

</head>

<body id="page1">
<div class="bg1">
  <div class="bg2">
    <div class="main">
      
      <header>
        <h1><a href="indexind.jsp" id="logo">Talk to ME</a></h1>
        
      </header>
      <div class="box">
        <nav>
          <ul id="menu">
            <li class="active"><a href="indexind.jsp">LOGIN</a></li>
            <li><a href="add-accountind.jsp">ADD USER</a></li>
            
          </ul>
        </nav>
        
        <article id="content">
          <div class="box1">
            <div class="wrapper">
              <form action="login-actionind1.jsp" id="form1">
			  
			   <h2>LOGIN</h2>
                <fieldset>
                  <table>
<tr>
<td>MAIL-ID</td>
<td>:</td>
<td><input type=text name=mailid></td>
</tr>
<tr>
<td>PASSWORD</td>
<td>:</td>
<td><input type=password name=password></td>
</tr>

<tr>
<td><input type=submit value="SUBMIT"></td>
<td></td>
<td><input type=reset value="CLEAR FORM"></td>
</tr>
</table>
				  <li class="active"><a href="forget-password.jsp">FORGET PASSWORD</a></li>
                </fieldset>
              </form>
              <div class="kwicks-wrapper marg_bot1">
                <ul class="kwicks horizontal">
                  <li><img src="images/kk.jpg" alt=""></li>
                  <li><img src="images/ss.JPG" alt=""></li>
                  <li><img src="images/ji.jpeg" alt=""></li>
                  <li><img src="images/download - Copy.jpg" alt=""></li>
                </ul>
              </div>
            </div>
            
          </div>
          
          
       
        
      </div>
    </div>
  </div>
</div>
<div class="main">
  
  <footer>
    
    
    
  </footer>
  
</div>
<script type="text/javascript">Cufon.now();</script>
<script type="text/javascript">
$(document).ready(function () {
    $('.kwicks').kwicks({
        max: 500,
        spacing: 0,
        event: 'mouseover'
    });
})
</script>

</html>