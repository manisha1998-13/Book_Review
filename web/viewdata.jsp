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
        <%@page import="onlinebook.Mail"%>
  
        <h2 align="center">View Book Details</h2>
         <p align="center">&nbsp;</p>
         
         <%
         String user = session.getAttribute("username").toString();
         String bookname = request.getParameter("bookname");
         String publisher = request.getParameter("publisher");
         String email = request.getParameter("email");
         System.out.println("sscdds"+email);
         
            Mail m= new Mail();
             String msg ="Book Name : "+bookname+"\nUser Name : "+user+"\nMessage  : User have viewed your book";
            m.secretMail(msg, bookname, email);
         
         %>
         
         <%
         
         String s1,s2;
        Connection con=Dbconnection.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from books where bookname = '"+bookname+"' ");
        ResultSet rs1 = ps.executeQuery();
       while ( rs1.next() )
        {
            
            s1=rs1.getString(6);
            s2=rs1.getString(2);
         %>
         <center><table>
         <tr>
           
	   <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
           <textarea cols="70" rows="25" readonly=""><%out.println(s1);%></textarea></td></div></td>
           </tr>
         <%}%>
         </table>
         </center>
         <br/><br/>
         
         <center><table width="500" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
         <form action="feedbackact.jsp?bookname=<%=bookname%>&publisher=<%=publisher%>" method="post" name="myform">
                 
         <tr>
         <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
         <strong><font color="white" >Give Rating : </font></strong></div></td>
         <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
         <select id="s1" name="rating" style="width:170px;" required="">
         <option>--Select--</option>
         <option>1</option>
         <option>2</option>
         <option>3</option>
         <option>4</option>
         <option>5</option>
         </select> 
                 
         </div></td>
         </tr>
         
         <tr>
         <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
         <strong><font color="white" >Give your Feedback : </font></strong></div></td>
         <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
         <textarea name="feedback" cols="34" rows="6"></textarea></div><input type="submit" value="Submit"></td>
         
         </tr>
         </form>
         </table></center>
         
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
            
    
