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
        <li><a href="publisherhome.jsp">Home</a></li>
        <li class="current"><a href="uploadbooks.jsp">Upload Books</a></li>
        <li><a href="viewbooks.jsp">View & Delete Books</a></li>
        <li><a href="publisherviewfeedback.jsp">View Feedback & Rating</a></li>
        <li><a href="publisher.jsp">Logout</a></li>
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

        <br/>
        <p align="justify">
        <center><p><font color="white" size="5"> Upload Books</font></p></center>
        
        <form name="f2" action="Upload" method="post" enctype="multipart/form-data">
            
        <center><table width="421">
        <tr>
        <td height="65"><font color="white">Book Name</td>
        <td><input name="bookname" required="" placeholder="Book Name"></input></td>
        </tr>
        <tr>
        <td height="43"><font color="white">Description </td>
        <td><input name="description" required="" placeholder="Description"/></td>
        </tr>
        
        <tr>
        <td height="43"><font color="white">Select Book </td>
        <td><font color="white">
        <input type="file" id="file" name="file" required=""/></td>
        </tr>
        
        <tr>
        <td height="43" rowspan="3">
        <p>&nbsp;</p></td>
        <td align="left" valign="middle"> <p>&nbsp;
        </p>
        <p>
        <input name="submit" type="submit" value="Upload" />
        </p>
        <div align="right">
        </div></td>
        </tr>        
        </form>
        </table>
        </p>
        
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
