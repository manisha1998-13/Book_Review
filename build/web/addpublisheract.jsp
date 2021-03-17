<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String k = request.getParameter("uid");
    String l = request.getParameter("username");
    String m = request.getParameter("password");
    String n = request.getParameter("email");
    String f = request.getParameter("dob");
    String p = request.getParameter("address");
    String q = request.getParameter("cno");
    
    try{
       
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
    PreparedStatement ps = con.prepareStatement("insert into publisher values(?,?,?,?,?,?,?)");

        ps.setString(1,k);    
        ps.setString(2,l);
        ps.setString(3,m);
        ps.setString(4,n);
        ps.setString(5,f);
        ps.setString(6,p);
        ps.setString(7,q);



    ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("addpublisher.jsp?message=success");
out.println("Publisher Added Successfully");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</div>
</body>
</html>