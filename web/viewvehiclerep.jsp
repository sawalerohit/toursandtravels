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
        <table class="table-striped">
            <tr>
                <th>Vehicle Id</th>
                <th>Vehicle Type</th>
                <th>Vehicle Name</th>
                <th>Cubic Capacity</th>
                <th>Owner Name</th>
                <th>Merchant Name</th>
                <th>Address</th>
                <th>Insurance Number</th>
                <th>PUC Number</th>
                <th>Registration Certificate Number</th>
                <th>Chassis Number</th>
                <th>Engine Number</th>
                <th>Rate Per Kilometer</th>
                <th>Status</th>
                <th>Merchant Username</th>
                
            </tr>
<%
      String mmname="'"+(String)session.getAttribute("mname")+"'";
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from vehicle ");
      while(rs.next())
      {
          out.println("<tr>");
          int p=rs.getInt(1);
          out.println("<td>"+rs.getInt(1));
          out.println("<td>"+rs.getString(2));
          out.println("<td>"+rs.getString(3));
          out.println("<td>"+rs.getInt(4));
          out.println("<td>"+rs.getString(5));
          out.println("<td>"+rs.getString(6));
          out.println("<td>"+rs.getString(7));
          out.println("<td>"+rs.getString(8));
          out.println("<td>"+rs.getString(9));
          out.println("<td>"+rs.getString(10));
          out.println("<td>"+rs.getString(11));
          out.println("<td>"+rs.getString(12));
          out.println("<td>"+rs.getInt(13));
          out.println("<td>"+rs.getInt(14));
          out.println("<td>"+rs.getString(15));
        }
      
      
%>
        </table><br><br>
        <p align="center"><a href="admindashboard.jsp" class="btn btn-primary">Dashboard</a></p>
    </body>
</html>