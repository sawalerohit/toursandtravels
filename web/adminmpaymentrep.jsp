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
                <th>Payment Id</th>
                <th>Merchant Name</th>
                <th>Amount</th>
                <th>Transaction Id</th>
                <th>Payment Mode</th>
                <th>Customer Name</th>
                
            </tr>
<%
    
     Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select apid,mname,pdone,atid,apm,cname from adminpayment ");
      while(rs.next())
      {
          out.println("<tr>");
          int p=rs.getInt(1);
          out.println("<td>"+p);
          out.println("<td>"+rs.getString(2));
          out.println("<td>"+rs.getString(3));
          out.println("<td>"+rs.getString(4));
          out.println("<td>"+rs.getString(5));
          out.println("<td>"+rs.getString(6));
          
      }
%>
        </table>
        <p align="center"><a href="admindashboard.jsp" class="btn btn-danger">Dashboard</a></p>
    </body>
</html>