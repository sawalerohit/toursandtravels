<%-- 
    Document   : bookdriver
    Created on : 13 Mar, 2023, 11:38:05 AM
    Author     : saliq
--%>

<%-- 
    Document   : customerheavyvehicleview
    Created on : 17 Feb, 2023, 4:27:58 PM
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
                <th>Driver Id</th>
            
                <th>Driver name</th>
                <th>Driver username</th>
                 
                <th>Aadhaar</th>
                <th>License Number</th>
                <th>Book</th>
               
            </tr>
<%
      //String mmname="'"+(String)session.getAttribute("mname")+"'";
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from driverregister where dflag=1 and status=0");
      while(rs.next())
      {
          out.println("<tr>");
          int p=rs.getInt(1);
          out.println("<td>"+p);
          out.println("<td>"+rs.getString(2));
          out.println("<td>"+rs.getString(3));
        
          out.println("<td>"+rs.getString(7));
          out.println("<td>"+rs.getString(10));

         
          
          out.println("<td><a href=bookdriverdone.jsp?id="+p+">Book</a>");
           
          
         
      }
      
      
%>
        </table><br><br>
        <p align="center"><a href="cdashboard.jsp" class="btn btn-danger" >Dashboard</a></p>
    </body>
</html>


