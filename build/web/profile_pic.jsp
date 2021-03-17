        <%@page import="java.io.InputStream"%>
<%@page import="java.sql.*"%>
        <%@page import="databasecon.Dbconnection"%>
        <%@ page session="true" %>
<%
	//String type = request.getParameter("type");
	//String name = (String)application.getAttribute("name");
  	try{  
	     
		String bookname = request.getParameter("bookname");     
    	Connection con=Dbconnection.getConnection();
                Statement st=con.createStatement();
    	String strQuery = "select image from books where bookname='"+bookname+"'" ;
    	ResultSet rs = st.executeQuery(strQuery);
    	String imgLen="";
    	if(rs.next())
		{
      		imgLen = rs.getString(1);
     	}  
		
    	rs = st.executeQuery(strQuery);
    	if(rs.next())
		{
      		int len = imgLen.length();
		  	byte [] rb = new byte[len];
		  	InputStream readImg = rs.getBinaryStream(1);
		 	int index=readImg.read(rb, 0, len);  
		  	st.close();
		  	response.reset();
		  	response.getOutputStream().write(rb,0,len); 
		  	response.getOutputStream().flush();        
		}
		
  	}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>
</body>
</html>