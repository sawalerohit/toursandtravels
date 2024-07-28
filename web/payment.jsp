-- 
    Document   : payment
    Created on : 11 Feb, 2023, 7:00:05 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
     try
    {
        Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      int p=Integer.parseInt(request.getParameter("id"));
      out.println(p);
      String query="update customerregister set cflag=1 where rid="+p+"";
      out.println(query);
      st.executeUpdate(query);
      st.close();
      con.close();
      response.sendRedirect("customerar.jsp");
      
    }
     catch(Exception e)
     {
         
     }


%>