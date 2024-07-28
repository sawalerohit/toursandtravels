<%-- 
    Document   : vieweditpayment
    Created on : 17 Apr, 2023, 10:17:25 AM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>   <style> body{
          background-image:url(130.jpg);
          background-size: cover;
      }</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <table class="table table-hover">
            <tr>
                <th>Vehicle Id</th>
                <th>Vehicle Name</th>
                <th>Vehicle Type</th>
                <th>Deposit</th>
                <th>Edit</th>
                
            </tr>
<%
    String mname="'"+(String)session.getAttribute("mname")+"'";
    out.println(mname);
     Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select heavyvehicle.hvid,heavyvehicle.vcname,heavyvehicle.vtype,hvpayment.deposit from heavyvehicle,hvpayment where heavyvehicle.hvid=hvpayment.hvid and heavyvehicle.muname="+mname+" and hvpayment.eflag=0");
      while(rs.next())
      {
          out.println("<tr>");
          int p=rs.getInt(1);
          out.println("<td>"+p);
          out.println("<td>"+rs.getString(2));
          out.println("<td>"+rs.getString(3));
          out.println("<td>"+rs.getInt(4));
          out.println("<td><a href=editheavydeposit.jsp?id="+p+">Edit</a>");
      }
%>
        </table>
    </body>
</html>