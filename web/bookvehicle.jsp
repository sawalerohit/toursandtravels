<%-- 
    Document   : bookvehicle
    Created on : 4 Feb, 2023, 7:10:04 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%!  ResultSet rs;
     String s;
     ResultSet rs1;
%>
<%
    int x = Integer.parseInt(request.getParameter("id"));
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
     rs=st.executeQuery("select vid,vtype,vname,cc,ino,pno,rno,cno,eno,rpk from vehicle where vid="+x+"");
     rs.next();
    }
    catch(Exception e)
    {
        
    }

%>
<%
     s="'"+(String)session.getAttribute("cname")+"'";
    out.println(s);
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
     rs1=st.executeQuery("select aadhaarno from customerregister where username="+s+"");
     rs1.next();
    }
    catch(Exception e)
    {
        
    }
%>
<html>
<head>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <p align="center"><img src="scanner.png" class="img img-thumbnail"></p>
    <br><br><br><br>
    <form action="bookvehicledone.jsp">
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-3">VehicleId</div>
            <div class="col-lg-3">Vehicle Type</div>
            <div class="col-lg-3">Vehicle Name</div>
            <div class="col-lg-1"></div>
        </div>
        <br>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-3"><input type="text" name="txtvid" class="form-control" value="<%=rs.getInt(1)%>" readonly></div>
            <div class="col-lg-3"><input type="text" name="txtvtype" class="form-control" value="<%=rs.getString(2)%>" readonly></div>
            <div class="col-lg-3"><input type="text" name="txtvname" class="form-control" value="<%=rs.getString(3)%>" readonly></div>
            <div class="col-lg-1"></div>
        </div>
            <br>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-3">Cubic Capacity</div>
            <div class="col-lg-3">Insurance Number</div>
            <div class="col-lg-3">Pollution Under Control</div>
            <div class="col-lg-1"></div>
        </div>
            <br>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-3"><input type="text" name="txtcc" class="form-control" value="<%=rs.getInt(4)%>" readonly></div>
            <div class="col-lg-3"><input type="text" name="txtino" class="form-control" value="<%=rs.getString(5)%>" readonly></div>
            <div class="col-lg-3"><input type="text" name="txtpno" class="form-control" value="<%=rs.getString(6)%>" readonly></div>
            <div class="col-lg-1"></div>
        </div><br>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-3">Registration Number</div>
            <div class="col-lg-3">Chassis Number</div>
            <div class="col-lg-3">Engine Number</div>
            <div class="col-lg-1"></div>
        </div>
        <br>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-3"><input type="text" name="txtrno" class="form-control" value="<%=rs.getString(7)%>" readonly></div>
            <div class="col-lg-3"><input type="text" name="txtcno" class="form-control" value="<%=rs.getString(8)%>" readonly></div>
            <div class="col-lg-3"><input type="text" name="txteno" class="form-control" value="<%=rs.getString(9)%>" readonly></div>
            <div class="col-lg-1"></div>
        </div>
            <br>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-3">Rate per Km</div>
            <div class="col-lg-3">Payment Type</div>
            <div class="col-lg-3">Deposit Amount</div>
            <div class="col-lg-1"></div>
        </div>
            <br>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-3"><input type="text" name="txtrpk" class="form-control" value="<%=rs.getInt(10)%>" readonly></div>
            <div class="col-lg-3"><select name="txtptype" class="form-control">
                    <option>PhonePe</option>
                    <option>Gpay</option>
                    <option>Paytm</option>
                </select></div>
          
            <div class="col-lg-3"><input type="text" name="txtamt" value="5000" class="form-control" readonly></div>
            <div class="col-lg-1"></div>
        </div>
            <br>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-3">Transaction Id</div>
            <div class="col-lg-3">Aadhaar Number</div>
            <div class="col-lg-3">DateofBooking</div>
            <div class="col-lg-1"></div>
        </div>
            <br>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-3"><input type="text" name="txttid" class="form-control" value=""></div>
            <div class="col-lg-3"><input type="text" name="txtano" class="form-control" value="<%=rs1.getString(1)%>" readonly></div>
            <div class="col-lg-3"><input type="text" name="txtdate" value="<%
                                         java.util.Date d=new java.util.Date();
                                         int dd=d.getDate();
                                         int mm=d.getMonth()+1;
                                         int yy=d.getYear()-100;
                                         out.println(dd+"-"+mm+"-"+"20"+yy);
                                         
                                         %>" class="form-control" readonly></div>
            <div class="col-lg-1"></div>
        </div>
            <br>
            <br><br>
            <div class="row">
                <div class="col-lg-5"></div>
                <div class="col-lg-3"><input type="submit"  class="btn btn-primary">&nbsp;&nbsp;<a href="cdashboard.jsp" class="btn btn-danger">Dashboard</a></div>
                <div class="col-lg-4"></div>
            </div>
    </form>
</body>
</html>
