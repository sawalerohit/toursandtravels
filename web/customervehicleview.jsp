<%-- 
    Document   : customervehicleview
    Created on : 3 Feb, 2023, 6:43:29 PM
    Author     : saliq
--%>


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
                <th>Vehicle Id</th>
                <th>Vehicle type</th>
                <th>Vehicle name</th>
                <th>Cubic Capacity</th> 
                <th>Insurance Number</th>
                <th>PUC Number</th>
                <th>Registration Certificate Number</th>
                <th>Chassis Number</th>
                <th>Engine Number</th>
                <th>Rate Per Kilometer</th>
                <th>Book</th>
               
            </tr>
<%
      //String mmname="'"+(String)session.getAttribute("mname")+"'";
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select vid,vtype,vname,cc,ino,pno,rno,cno,eno,rpk from vehicle where vflag=0");
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
          out.println("<td><a href=bookvehicle.jsp?id="+p+">Book</a>");
            //out.println("<td>"+rs.getString(10));
          
         
      }
      
      
%>
        </table><br><br>
        <p align="center"><a href="cdashboard.jsp" class="btn btn-danger" >Dashboard</a></p>
    </body>
</html>