<%-- 
    Document   : paymenttomerchant
    Created on : 11 Apr, 2023, 10:12:00 AM
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
                <th>Payment Id</th>
               <th>Vehicle Id</th>
               <th>Vehicle Type</th>
               <th>Vehicle Name</th>
               <th>Chasis Number</th>
               <th>Payment Type</th>
               <th>Deposit</th>
               <th>Transaction Id</th>
               <th>Aadhaar</th>
               <th>Date</th>
               <th>Customer Name</th>
               <th>Payment</th>    
            </tr>
<%
      //String mmname="'"+(String)session.getAttribute("mname")+"'";
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from payment where pflag=0 and eflag=1");
      while(rs.next())
      {
          out.println("<tr>");
          int p=rs.getInt(1);
          int qq=rs.getInt(2);
          out.println("<td>"+rs.getInt(1));
          out.println("<td>"+rs.getString(2));
          out.println("<td>"+rs.getString(3));
          
          out.println("<td>"+rs.getString(4));
          out.println("<td>"+rs.getString(9));
          out.println("<td>"+rs.getString(12));
          out.println("<td>"+rs.getString(13));
          out.println("<td>"+rs.getString(14));
          out.println("<td>"+rs.getString(15));
          out.println("<td>"+rs.getString(16));
          out.println("<td>"+rs.getString(17));
          out.println("<td><a href=ptomdone.jsp?a="+p+"&b="+qq+">Payment</a>");
          }
      
      
%>
        </table><br><br>
        <p align="center"><a href="admindashboard.jsp" class="btn btn-primary">Dashboard</a></p>
    </body>
</html>