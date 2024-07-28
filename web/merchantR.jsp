<%-- 
    Document   : merchantR
    Created on : 10 Jan, 2023, 1:51:50 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
try
{
 String n = "'"+request.getParameter("txtfname")+"'";
 String un = "'"+request.getParameter("txtemail")+"'";
 String p = "'"+request.getParameter("txtpassword")+"'";
 String a = "'"+request.getParameter("txtaddress")+"'";
 String aa = "'"+request.getParameter("txtaadhaar")+"'";
 String mn = "'"+request.getParameter("txtnumber")+"'";
 
  Class.forName("com.mysql.jdbc.Driver");
    //Create Connection
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
    //Create Statement
    Statement st = con.createStatement();
    String query = "insert into merchantregister (Name,Username,Password,Address,Aadhaar,Mobileno)values("+n+","+un+","+p+","+a+","+aa+","+mn+")";
    st.executeUpdate(query);
    out.println(query);
    st.close();
    con.close();
    response.sendRedirect("body.html");
 
}
catch (Exception e)
{
    out.println(e);
}
%>