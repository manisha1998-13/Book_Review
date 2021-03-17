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
        <li><a href="search.jsp">Search</a></li>
        <li class="current"><a href="viewreviews.jsp">View Reviews</a></li>
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

    <%
        try {

        Connection con=Dbconnection.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from feedback");
        ResultSet rs = ps.executeQuery();

    %>
        <br><br>
        <center>
        <h2><font color="white" size="5"> View Reviews & Rating</font></h2>
        <br>
        <table border="2" width="80%">

        <tr>
        <th><font color="skyblue">User Name</th>
        <th><font color="skyblue">Rating</th>
        <th><font color="skyblue">Review</th>
        </tr>

        <%                while (rs.next()) {
        %>

        <tr>
        <th><font color="white"><%=rs.getString(1)%></th>
        <th><font color="white"><%=rs.getString(2)%></th>
        <th><font color="white"><%=rs.getString(3)%></th>
       </tr>
        <%
            }
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>
        </table>
        <br/><br/><br/>
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