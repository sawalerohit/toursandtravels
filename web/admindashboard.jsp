<%-- 
    Document   : admindashboard
    Created on : 10 Jan, 2023, 6:27:39 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String p=(String)session.getAttribute("aname");
    out.println("<h2 align=center><font size=25 face=Aerial color=black><b>Welcome &nbsp;"+p);
    

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP P</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
      body{
          background-image:url(130.jpg);
          background-size: cover;
      }
  </style>
    </head>
    <body>
        <br><br>
 <table class="table table-hover">
          <tr>
              <td align="left"><a href="customerar.jsp" face="Times Roman">  Approve/Reject Customer</a></td>
          </tr>
             <tr>
              <td align="left"><a href="viewdriver.jsp" face="Times Roman">  Approve/Reject Driver</a></td>
          </tr>
          <tr>
              <td align="left"><a href="viewvehiclerep.jsp" face="Times Roman">  View All Vehicles</a></td>
          </tr>
          <tr>
              <td align="left"><a href="viewdriverrep.jsp" face="Times Roman">  View All Drivers</a></td>
          </tr>
           <tr>
              <td align="left"><a href="viewmerchantrep.jsp" face="Times Roman">  View All Merchants</a></td>
          </tr>
           <tr>
              <td align="left"><a href="viewcustomerrep.jsp" face="Times Roman">  View All Customers</a></td>
          </tr>
           <tr>
              <td align="left"><a href="paymenttomerchant.jsp" face="Times Roman">  Merchant Payment</a></td>
          </tr>
           <tr>
              <td align="left"><a href="dapayment.jsp" face="Times Roman">  Driver Payment</a></td>
          </tr>
           <tr>
              <td align="left"><a href="admindriverrep.jsp" face="Times Roman">  Driver Wise Payment</a></td>
          </tr>
           <tr>
              <td align="left"><a href="adminmpaymentrep.jsp" face="Times Roman">  Merchant Wise Payment</a></td>
          </tr>
          <tr>
              <td align="left"><a href="hvpayment.jsp" face="Times Roman">  Merchant Wise Heavy Vehicle Payment</a></td>
          </tr>
          <tr>
              <td align="left"><a href="adminsignout.jsp" face="Times Roman">Signout</a></td>
          </tr>
          
          
 </table>
    </body>
</html>
