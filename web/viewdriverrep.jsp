<%-- 
    Document   : viewdriver
    Created on : 10 Mar, 2023, 11:22:27 AM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <table class="table table-hover">
            <tr>
                <th>Driver Id</th>
                <th>Driver Name</th>
                <th>Username</th>
                <th>Mobile Number</th>
                <th>Address</th>
                <th>Aadhaar Number</th>
                <th>Payment Mode</th>
                <th>TransactionId</th>
                <th>License Number</th>
                <th>Registration Charges</th>
                
            </tr>
            <%
     try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from driverregister");
        while(rs.next())
        {
            int p=rs.getInt(1);
            out.println("<tr>");
            out.println("<td>"+p);
            out.println("<td>"+rs.getString(2));
            out.println("<td>"+rs.getString(3));
            out.println("<td>"+rs.getString(5));
            out.println("<td>"+rs.getString(6));
            out.println("<td>"+rs.getString(7));
            out.println("<td>"+rs.getString(8));
            out.println("<td>"+rs.getString(9));
            out.println("<td>"+rs.getString(10));
            out.println("<td>"+rs.getInt(12));
            }
    }
    catch(Exception e)
    {
        out.println(e);
    }

%>

        </table>
<p align="center"><a href="admindashboard.jsp" class="btn btn-danger">Dashboard</a></p>
    </body>
</html>
