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

<script>  
function validateform(){  
var x=document.myform.email.value;
var phoneno = document.getElementById('txtphoneno'); 
  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
  return false;  
} 
if (phoneno.value == "" || phoneno.value == null) {
            alert("Please enter your Mobile No.");
            return false;
        }
        if (phoneno.value.length < 10 || phoneno.value.length > 10) {
            alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
            return false;
        }
}  
</script>
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
        <li><a href="index.html">Home</a></li>
        <li><a href="admin.jsp">Admin</a></li>
        <li><a href="publisher.jsp">Publisher</a></li>
        <li class="current"><a href="user.jsp">User</a></li>
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
      
    <form name="myform" action="userregact.jsp" method="post" onsubmit="return validateform()" >
    <center>
<table align="center">
    
    <br>
    <center><p><font size="6" color="white">&nbsp;&nbsp;&nbsp;&nbsp; User Registration</font></p></center>
   
        <tr>
              <td>
                   <tr>
            
                  <tr>
              <td>
                  
               <td><strong><font size="3" color="white">User Name:</font></strong></td>
        
                <td><input type="text" name="username" id="username1" placeholder=UserName required style="height:30px; width:200px"> </input></td>
            
              </td>
        </tr>
        
       <tr>
              <td>
                <td><strong><font size="3" color="white">Password </font></strong></td>
               <td><input type="password" name="password" id="password1" placeholder= Password required style="height:30px; width:200px"></input></td> 
              </td>
        </tr>
           <tr>
              <td>
                <td><strong><font size="3" color="white">Email: </font></strong></td>
               <td><input type="text" name="email" id="email" placeholder= Email style="height:30px; width:200px"></input></td> 
              </td>
        </tr> 
            
            <tr>
                
                <tr>
              <td>
                  
               <td><strong><font size="3" color="white">DOB:</font></strong></td>
        
                <td><input type="date" name="dob" id="dob1"  style="height:30px; width:200px"> </input></td>
            
              </td>
        </tr>
        
       <tr>
              <td>
                <td><strong><font size="3" color="white">Address </font></strong></td>
               <td><input type="text" name="address" id="address1" placeholder= Address required style="height:30px; width:200px"></input></td> 
              </td>
        </tr>
           <tr>
              <td>
                <td><strong><font size="3" color="white">Mobile No: </font></strong></td>
               <td><input type="text" name="cno" id="txtphoneno" onkeypress="return isNumber(event)" placeholder= MobileNo style="height:30px; width:200px"></input></td> 
              </td>
        </tr> 
            
            <tr>
              
              <td>
                              <br><br><br>    
                                   
                  <td><input type="submit" value="Register" style="height:30px; width:70px" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <input type="reset" value="Reset" style="height:30px; width:50px" /></td>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
          </tr>
            </table>
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