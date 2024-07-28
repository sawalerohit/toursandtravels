<%-- 
    Document   : customerR
    Created on : 6 Jan, 2023, 7:39:06 PM
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
    String pm = "'"+request.getParameter("txtpm")+"'";
    String tid = "'"+request.getParameter("txttid")+"'";
    int rc = Integer.parseInt(request.getParameter("txtrc"));
    
    //specify Drivers
    Class.forName("com.mysql.jdbc.Driver");
    //Create Connection
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
    //Create Statement
    Statement st = con.createStatement();
    String query = "insert into customerregister (Name,Username,Password,Address,AadhaarNo,MobileNo,PM,TID,RC)values("+n+","+un+","+p+","+a+","+aa+","+mn+","+pm+","+tid+","+rc+")";
    st.executeUpdate(query);
    out.println(query);
    st.close();
    con.close();
    response.sendRedirect("customerlogin.html");
}
catch (Exception e)
{
    out.println(e);
}
%>
