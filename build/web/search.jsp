<!DOCTYPE html> 
<html>
<head>
<title>Online Book Review Management System</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

<script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>
<body>
    
        <div id="main">
        <header>
        <div id="banner">
        <div id="welcome">
        <center> <h3>Online Book Review Management System</h3></center>
        </div>		
        </div>
        </header>

        <nav>
        <div id="menubar">
        <ul id="nav">
        <li><a href="userhome.jsp">Home</a></li>
        <li class="current"><a href="search.jsp">Search</a></li>
        <li><a href="viewreviews.jsp">View Reviews</a></li>
        <li><a href="user.jsp">Logout</a></li>
        </ul>
        </div>	
        </nav>	

        <div id="site_content">	

        <div class="slideshow">
        <ul class="slideshow">
        <li class="show"><img width="900" height="250" src="images/home_1.jpg" alt="&quot;Online Book Review Management System&quot;" /></li>
        <li><img width="900" height="250" src="images/home_2.jpg" alt="&quot;Online Book Review Management System&quot;" /></li>
        </ul> 
        </div>	
        <br/><br/>
        <div id="content">
        <div class="content_item">
  
  
    
        <%@page import="java.sql.*"%>
        <%@page import="databasecon.Dbconnection"%>
        <%@ page session="true" %>


        <br/><br/>
        <center><h2>Search Books</h2></center><br/>
        <center>
        <form action="searchact.jsp" method="post" id="searchact" >
        <table>
        <tr>
        <td align="right"><font size="3" color="white">Book Name : </font>
        </td><td> 
        <input type="text" align="left" size="15" name="bookname"  /></td>
        </tr>
        </center>
        <tr>
        <td height="43" rowspan="3">
        <p>&nbsp;</p></td>
        <td align="left" valign="middle"> <p>&nbsp;
        </p>
        <p>
        <input name="submit" type="submit" value="Search" />
        </p>
        <div align="right">
        </div></td>
        </tr>

        </center>
        </table>
        </form>

        <br/><br/>

         </div>
         </div> 
         </div>	
         </div>

<footer>
<br/>
<a href="http://www.mlrinstitutions.ac.in/">MLR Institute of Technology</a> <br/><br/>
	  
</footer>

<!-- javascript at the bottom for fast page loading -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/image_slide.js"></script>
  
</body>
</html>          
    