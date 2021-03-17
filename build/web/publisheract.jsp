<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>
        <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        try{

        String user=null;
        String email=null;
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from publisher where username= '"+username+"' and password='"+password+"'");
        if(rs.next())
        {
        user = rs.getString(2);
        
        email = rs.getString("email");
        session.setAttribute("username",username);
        System.out.println("User:"+user);
        
        session.setAttribute("email",email);

        response.sendRedirect("publisherhome.jsp");
        }
        else 
        {
        response.sendRedirect("publisher.jsp?m1=LoginFail");
        }
        }
        catch(Exception e)
        {
        System.out.println("Error in emplogact"+e.getMessage());
        }
        %>