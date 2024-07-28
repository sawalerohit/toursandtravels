<%-- 
    Document   : availabled
    Created on : 18 Apr, 2023, 3:49:15 PM
    Author     : saliq
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
    
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      String duname="'"+request.getParameter("duname")+"'";
      st.executeUpdate("update driverregister set status=0 where username="+duname+"");
      st.close();
      con.close();
      response.sendRedirect("ddashboard.jsp");
      }
      catch(Exception e)
      {
      }
%>