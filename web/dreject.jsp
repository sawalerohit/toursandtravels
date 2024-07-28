<%-- 
    Document   : dreject
    Created on : 10 Mar, 2023, 11:49:07 AM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        int id=Integer.parseInt(request.getParameter("id"));
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
        Statement st=con.createStatement();
        st.executeUpdate("delete from driverregister where did="+id+"");
        st.close();
        con.close();
        response.sendRedirect("viewdriver.jsp");
    }
        catch(Exception e)
    {
        
    }

%>
