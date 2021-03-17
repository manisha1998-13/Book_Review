<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String bookname = request.getParameter("bookname");
    
    try{
       
       Connection con=Dbconnection.getConnection();
       Statement st = con.createStatement();
       PreparedStatement ps = con.prepareStatement("delete from books where bookname = '"+bookname+"'");

       ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("search.jsp?message=deleted successfully");
out.println("Book Deleted Successfully");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</div>
</body>
</html>