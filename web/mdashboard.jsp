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
          background-image:url(125.jpg);
          background-size: cover;
      }
  </style>
    </head>
    <body>
        <font color="red">
      <%
          String mname=(String)session.getAttribute("mname");
          out.println("<h2  align=center><font size=25 face=Times Roman color=black><b>Welcome &nbsp;&nbsp;"+mname);
      %>
      </font>
      <br><br>
      <table class="table table-hover">
          <tr>
              <td align="left"><a href="bikeregister.jsp" face="Times Roman">Register Vehicle</a></td>
          </tr>
                <tr>
                   <td align="left"><a href="heavyvehicle.jsp">Add Heavy Vehicle</a</td>

               </tr>
                    <tr>
                        <td align="left"><a href="viewvehicle.jsp">View Vehicle</a</td>

                    </tr>
                        <tr>
                        <td align="left"><a href="vieweditpayment.jsp">View/Edit Vehicle Payment</a</td>

                    </tr>
                <tr>
                        <td align="left"><a href="viewmerchantpayment.jsp">Payment Report</a</td>

                    </tr>
                <tr>
                        <td align="left"><a href="viewedithvpayment.jsp">View/Edit Heavy Vehicle Payment</a</td>

                    </tr>
               
                    <tr>
                        <td align="left"><a href="msignout.jsp">Signout</a</td>
                    </tr>
         
      </table>
    </body>
</html>
