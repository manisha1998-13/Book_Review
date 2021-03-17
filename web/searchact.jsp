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
  
        <h2 align="center">View Book Details</h2>
         <p align="center">&nbsp;</p>
        <%
        String bookname = request.getParameter("bookname");
        String s1,s2,s3,s4,s5;
        int j=0;
       
	Connection con=Dbconnection.getConnection();
        PreparedStatement ps = con.prepareStatement("select * from books where bookname like '%"+bookname+"%' ");
        ResultSet rs1 = ps.executeQuery();
       while ( rs1.next() )
        {
            
            s1=rs1.getString(2);
            s2=rs1.getString(3);
            s3=rs1.getString(4);
            s4=rs1.getString(5);
            s5=rs1.getString(7);


                    %>
           <center><table width="451" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
               
           
           
           <tr>
           <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
           <strong><font color="white" >Book Name : </font></strong></div></td>
	   <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
           <input type="text" name="bookname" size="12" readonly="" value="<%out.println(s1);%>"></div></td>
           </tr>
           
           <tr>
           <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
           <strong><font color="white" >Description : </font></strong></div></td>
	   <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
           <textarea cols="34" rows="6" readonly=""><%out.println(s2);%></textarea></div></td>
           </tr>
           
           <tr>
           <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
           <strong><font color="white" >Date : </font></strong></div></td>
	   <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
           <input type="text" name="date" size="12" readonly="" value="<%out.println(s3);%>"></div></td>
           </tr>
           
           <tr>
           <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
           <strong><font color="white" >Publisher Name : </font></strong></div></td>
	   <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
           <input type="text" name="publisher" size="12" readonly="" value="<%out.println(s4);%>"></div></td>
           </tr>
           
           <tr>
           <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
           <strong><font color="white" >View Details : </font></strong></div></td>
	   <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
           <a href="viewdata.jsp?bookname=<%=s1%>&publisher=<%=s4%>&email=<%=s5%>"><font color="white">Read Book</font></a>
           </div></td>
           </tr>
           
           <br/>
           <%}%>
            
       
           </table></center>
           
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
            
    
