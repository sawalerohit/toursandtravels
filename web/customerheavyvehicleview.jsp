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
                <th>Vehicle Id</th>
                <th>Vehicle type</th>
                <th>Vehicle name</th>
                <th>Cubic Capacity</th> 
                <th>Insurance Number</th>
                <th>PUC Number</th>
                <th>Registeration(RC)</th>
                <th>Chassis Number</th>
                <th>Engine Number</th>
                <th>Rate Per Kilometer</th>
                <th>Person Capacity</th>
                <th>Aadhaar</th>
                <th>Book</th>
               
            </tr>
<%
      //String mmname="'"+(String)session.getAttribute("mname")+"'";
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select hvid,vtype,vcname,cc,ino,pno,rno,cno,eno,rpk,pc,aadhaar from heavyvehicle where vflag=0");
      while(rs.next())
      {
          out.println("<tr>");
          int p=rs.getInt(1);
          out.println("<td>"+p);
          out.println("<td>"+rs.getString(2));
          out.println("<td>"+rs.getString(3));
          out.println("<td>"+rs.getInt(4));
          out.println("<td>"+rs.getString(5));
          out.println("<td>"+rs.getString(6));
          out.println("<td>"+rs.getString(7));
          out.println("<td>"+rs.getString(8));
          out.println("<td>"+rs.getString(9));
          out.println("<td>"+rs.getInt(10));
          out.println("<td>"+rs.getInt(11));
          out.println("<td>"+rs.getInt(12));
          out.println("<td><a href=bookheavyvehicle.jsp?id="+p+">Book</a>");
           
          
         
      }
      
      
%>
        </table><br><br>
        <p align="center"><a href="cdashboard.jsp" class="btn btn-danger" >Dashboard</a></p>
    </body>
</html>

