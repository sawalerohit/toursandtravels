<%-- 
    Document   : deletevehicle
    Created on : 23 Jan, 2023, 5:24:19 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<%
   int id = Integer.parseInt(request.getParameter("id"));
   Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
   Statement st = con.createStatement();
   st.executeUpdate("delete from vehicle where vid="+id+"");
   st.close();
   con.close();
   response.sendRedirect("viewvehicle.jsp");
%>