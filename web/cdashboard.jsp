<%-- 
    Document   : mdashboard
    Created on : 13 Jan, 2023, 5:58:33 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP P</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
      body{
          background-image:url(122.jpg);
          background-size: cover;
      }
  </style>
    </head>
    <body>
           <h1 align="Center"><font color="black" >Customer Dashboard</font></h1>
       
      <%
          String cname=(String)session.getAttribute("cname");
          out.println("<h2  align=center><font size=20 face=Times Roman color=black><b>Welcome &nbsp;&nbsp;"+cname+"</font>");
      %>
     <br><br>
      <table class="table table-hover" >
          
                <tr>
                    <td align="left"><a href="customervehicleview.jsp" face="Times Roman" >Book Vehicle</font></a></td>
                </tr>
                
                <tr>
                  <td align="left"><a href="customerheavyvehicleview.jsp" face="Times Roman">Book Bus</a></td>
                </tr>
                
                <tr>
                  <td align="left"><a href="bookrep.jsp" face="Times Roman">History</a></td>
                </tr>
                
                <tr>
                  <td align="left"><a href="bookheavy.jsp" face="Times Roman">Bus-History</a></td>
                </tr>
                 <tr>
                  <td align="left"><a href="bookdriver.jsp" face="Times Roman">Book Driver</a></td>
                </tr>
                   <tr>
                  <td align="left"><a href="custpaymentrep.jsp" face="Times Roman">Payment Report</a></td>
                </tr>
                 <tr>
                  <td align="left"><a href="custheavypayment.jsp" face="Times Roman">Heavy Vehicle Payment Report</a></td>
                </tr>
                <tr>
                  <td align="left"><a href="custsignout.jsp" face="Times Roman">Signout</a></td>
                </tr>

        
      </table>
    
    </body>
</html>
