<%-- 
    Document   : merchantlogin
    Created on : 11 Jan, 2023, 5:47:34 PM
    Author     : saliq
--%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
  try
  {
      String u=request.getParameter("txtemail");
      String p=request.getParameter("txtpassword");
      out.println(u+""+p);
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      ResultSet rs = st.executeQuery("select Username,Password from merchantregister");
      int flag=0;
      while(rs.next())
      {
          String uu=rs.getString(1);
          String pp=rs.getString(2);
          if(u.equals(uu)&&p.equals(pp))
          {
              flag=1;
              break;
          }
      }
      if(flag==0)
      {
          out.println("fail");
          response.sendRedirect("merchantlogin.html");
      }
       else
        {
            out.println("Pass");
           session.setAttribute("mname",u);
           response.sendRedirect("mdashboard.jsp");
        }
  }
  catch (Exception e)
  {
      out.println(e);
  }
%>