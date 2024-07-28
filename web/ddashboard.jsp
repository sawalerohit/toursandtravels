<%-- 
    Document   : ddashboard
    Created on : 11 Mar, 2023, 11:39:33 AM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        String dname=(String)session.getAttribute("dname");
        out.println("<p align=center><font size=25 face=Times Roman color=black><b>Welcome"+dname+"</font>");

%>
<html>
    <head>
        <style> body{
          background-image:url(130.jpg);
          background-size: cover;
      }</style>
    </head>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <body>
        <br><br> <br><br><font size="10">
        <table class="table table-striped">
            <tr>
                <td align="left"><a href="availabilityupdate.jsp">Availability Update</a></td>
            </tr>
            <tr>
                <td align="left"><a href="viewpaymentd.jsp">View Payment History</a></td>
            </tr>
            <tr>
                <td align="left"><a href="dsignout.jsp">Signout</a></td>
            </tr>
            
            
        </table>
        </font>
    </body>
</html>
