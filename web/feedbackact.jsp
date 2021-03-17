<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String user = session.getAttribute("username").toString();
    String bookname = request.getParameter("bookname");
    String rating = request.getParameter("rating");
    String feedback = request.getParameter("feedback");
    String publisher = request.getParameter("publisher");
    
    try{
       
       Connection con=Dbconnection.getConnection();
       PreparedStatement ps = con.prepareStatement("insert into feedback values(?,?,?,?,?)");
       
        ps.setString(1,user);
        ps.setString(2,bookname);    
        ps.setString(3,rating);
        ps.setString(4,feedback);
        ps.setString(5,publisher);
        ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("search.jsp?message=success");
out.println("Feedback Given Successfully");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</div>
</body>
</html>