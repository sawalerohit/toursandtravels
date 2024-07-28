<%-- 
    Document   : approvec
    Created on : 9 Feb, 2023, 7:24:39 PM
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
