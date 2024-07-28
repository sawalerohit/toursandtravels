<%-- 
    Document   : dapprove
    Created on : 10 Mar, 2023, 11:44:35 AM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%

    int id=Integer.parseInt(request.getParameter("id"));
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
        Statement st=con.createStatement();
        st.executeUpdate("update driverregister set dflag=1 where did="+id+"");
        st.close();
        con.close();
        response.sendRedirect("viewdriver.jsp");
    }
    catch(Exception e)
    {
        out.println(e);
    }

%>
