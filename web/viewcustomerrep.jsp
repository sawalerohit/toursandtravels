<%-- 
    Document   : viewvehicle
    Created on : 20 Jan, 2023, 5:48:01 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<html>
    <head></head>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <body>
        <table class="table table-striped">
            <tr>
                <th>Registration Id</th>
               <th>Name</th>
               <th>Username</th>
               <th>Address</th>
               <th>Aadhaar Number</th>
               <th>Mobile Number</th>
               <th>Payment Mode</th>
               <th>Transaction Id</th>
               <th>Registration Charges</th>
            </tr>
<%
      //String mmname="'"+(String)session.getAttribute("mname")+"'";
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from customerregister");
      while(rs.next())
      {
          out.println("<tr>");
          int p=rs.getInt(1);
          out.println("<td>"+rs.getInt(1));
          out.println("<td>"+rs.getString(2));
          out.println("<td>"+rs.getString(3));
          
          out.println("<td>"+rs.getString(5));
          out.println("<td>"+rs.getString(6));
          out.println("<td>"+rs.getString(7));
          out.println("<td>"+rs.getString(8));
          out.println("<td>"+rs.getString(9));
          out.println("<td>"+rs.getString(10));
          }
      
      
%>
        </table><br><br>
        <p align="center"><a href="admindashboard.jsp" class="btn btn-primary">Dashboard</a></p>
    </body>
</html>