 <%@page import="java.sql.*"%>
        <%@page import="databasecon.Dbconnection"%>
        <%@ page session="true" %>

<%
        
        
        Connection con=Dbconnection.getConnection();
        PreparedStatement ps1 = con.prepareStatement("select bookname from feedback where publishername = '"+user+"' ");
        ResultSet rs = ps1.executeQuery();
        
        String bookname=null;
        if(rs.next()){
            bookname = rs.getString("bookname");
        }
        
        PreparedStatement ps = con.prepareStatement("select * from feedback where publishername = '"+user+"' ");
        ResultSet rs1 = ps.executeQuery();
        int totalcount=0;
        int totalrating=0;
        float average=0;
        while(rs1.next()){
        
        totalcount++;
        System.out.println("totalcount"+totalcount);
        
        totalrating=totalrating+rs1.getInt("rating");
         System.out.println("totalrating"+totalrating);
        }
        average=totalrating/totalcount;
        System.out.println("avg"+average);
        
        PreparedStatement ps2 = con.prepareStatement("update books set rating="+average+" where publisher = '"+user+"' ");
        ps2.executeUpdate();
        
        %>