<%-- 
    Document   : customerar
    Created on : 9 Feb, 2023, 7:08:58 PM
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
            <th>Rid</th>
            <th>Name</th>
            <th>Mobile Number</th>
            <th>Payment Mode</th>
            <th>Transaction Id</th>
            <th>Charges</th>
            <th>Approve</th>
            <th>Reject</th>
        </tr>
    
<%

    try
    {
        Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select rid,name,mobileno,pm,tid,rc from customerregister where cflag=0");
      while(rs.next())
      {
        out.println("<tr>");
        int p=rs.getInt(1);
        out.println("<td>"+rs.getInt(1));
        out.println("<td>"+rs.getString(2));
        out.println("<td>"+rs.getString(3));
        out.println("<td>"+rs.getString(4));
        out.println("<td>"+rs.getString(5));
        out.println("<td>"+rs.getInt(6));
        out.println("<td><a href=approvec.jsp?id="+p+">Approve</a>");
        out.println("<td><a href=rejectc.jsp?id="+p+">Reject</a>");
      }
      
    }
    catch(Exception e)
    {
        
    }



%>
</table>
</body>
</html>