        <%

        try {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ((username.equals("admin") ) && (password.equals("admin"))) {

            response.sendRedirect("adminhome.jsp?msg=success");

        } else {

        %>

        User Details Given for Username : <%=request.getParameter("username")%> is Not Valid
        <br>

        Please Try Again

        <%
        }
        } catch (Exception e) {
        e.printStackTrace();
        }
        %>

