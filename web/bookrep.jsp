<%-- 
    Document   : bookrep
    Created on : 15 Feb, 2023, 3:37:15 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
    </head>
    <body>
        <table class="table table-striped">
            <tr>
                <th>Payment Id</th>
                <th>Vehicle Id</th>
                <th>Vehicle Type</th>
                <th>Vehicle name</th>
                <th>Cubic Capacity</th>
                <th>Insurance Number</th>
                <th>PUC Number</th>
                <th>Registeration Number</th>
                <th>Chassiss Number</th>
                <th>Engine Number</th>
                <th>Rate per Kilometer</th>
                <th>Payment type</th>
                <th>Deposit</th>
                <th>Transaction ID</th>
                <th>Aadhaar Number</th>
                <th>Date</th>
              </tr>
<%

    try
    {
        String cname="'"+(String)session.getAttribute("cname")+"'";
         Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from payment where cname="+cname+"");
      while(rs.next())
      {
          out.println("<tr>");
          out.println("<td>"+rs.getInt(1));
          out.println("<td>"+rs.getInt(2));
          out.println("<td>"+rs.getString(3));
          out.println("<td>"+rs.getString(4));
          out.println("<td>"+rs.getInt(5));
          out.println("<td>"+rs.getString(6));
          out.println("<td>"+rs.getString(7));
          out.println("<td>"+rs.getString(8));
          out.println("<td>"+rs.getString(9));
          out.println("<td>"+rs.getString(10));
          out.println("<td>"+rs.getInt(11));
          out.println("<td>"+rs.getString(12));
          out.println("<td>"+rs.getInt(13));
          out.println("<td>"+rs.getString(14));
          out.println("<td>"+rs.getString(15));
          out.println("<td>"+rs.getString(16));
          
      }
     
    }
    catch(Exception e)
    {
        
    }

%>
        </table><br><br>
        <p align="center"><a href="cdashboard.jsp" class="btn btn-danger">Dashboard</a></p>
</body>
</html>