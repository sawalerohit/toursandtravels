<%-- 
    Document   : bookdriverdone
    Created on : 14 Mar, 2023, 11:19:30 AM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%!
    ResultSet rs1,rs2;
    %>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    out.println(id);
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      rs1=st.executeQuery("select name,username from driverregister where did="+id+"");
      rs1.next();
    }
    catch(Exception e)
    {
        
    }


%>
<%
    String cu="'"+(String)session.getAttribute("cname")+"'";
    //out.println(cu);
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      rs2=st.executeQuery("select name,username from customerregister where username="+cu+"");
      rs2.next();
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
	<title></title>
	<style type="text/css">
		body{
			background-image:url(bgbilding2.jpg) ;
			background-size: cover;
		}
	</style>
        <script type="text/javascript">
            function demo()
            {
                var x=document.forms[0].txtrc.value;
                var y=document.forms[0].txtnod.value;
                var z=x*y;
                document.forms[0].txtamt.value=z;
            }
        </script>
</head>
<body style="background-color:#000000;">
	<h3 align="center"><font color="#99ccff" face="Times roman" size="16"><b>Driver Booking and Payment</b></font></h3>
        <p align="center"><font color="red" size="7">Date of Driver Service:<%
                java.util.Date d=new java.util.Date();
                int dd=d.getDate();
                int mon=d.getMonth()+1;
                int yy=d.getYear()-100;
                String cd=dd+"-"+mon+"-"+"20"+yy;
                out.println(cd);
                session.setAttribute("dobook",cd);
                %></font></p>
<form action="driverp.jsp"  method="post">
<br><br><br>
	<div class="row">
<div class="col-lg-1"></div>
		<div class="col-lg-3">
			<font color="#e6ccff">Fullname*</font>
		</div		
		  <div class="col-lg-1"></div>
			
		</div>
		
		<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-9">
					<input type="text" name="txtfname" placeholder="Fullname" class="form-control" value="<%=rs1.getString(1)%>" readonly>
				
				<div class="col-lg-1"></div>
			</div>
			<br><br>
			<br><br><br>
			<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-3">
				  <font color="#e6ccff">Driver User-name*</font>
			</div>
			<div class="col-lg-3">
				  <font color="#e6ccff">Customer-name*</font>
			</div>
			    <div class="col-lg-3">
				  <font color="#e6ccff">Customer User-name*</font>
			</div> 
	</div>

	<div class="row">
		<div class="col-lg-1"></div>
			<div class="col-lg-3">
				<input type="text" name="txtduname" value="<%=rs1.getString(2)%>" class="form-control" readonly>
				<p id="a"></p>
			</div>
			<div class="col-lg-3">
				<input type="text" name="txtcname" value="<%=rs2.getString(1)%>" class="form-control" readonly>
				<p id="b"></p>
			</div>
			<div class="col-lg-3">
				<input type="text" name="txtcuname" value="<%=rs2.getString(2)%>" class="form-control" readonly>
				<p id="b"></p>
			</div>
			<div class="col-lg-1"></div>
		</div>
		<br><br>
		<br><br><br>
				<div class="row">
					<div class="col-lg-1"></div>
					<div class="col-lg-3">
						<font color="#e6ccff">Payment Method*</font>
					</div>
					<div class="col-lg-3">
						<font color="#e6ccff">Transaction-ID*</font>
					</div>
					<div class="col-lg-3">
						<font color="#e6ccff">Chargesperday*</font>
					</div>
				</div>
		<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-3"><select name="txtpm" class="form-control">
									  <option>Phonepe</option>
									  <option>Gpay</option>
								   	  <option>Paytm</option>
								   	</select>
				</div>
				<div class="col-lg-3">
					<input type="text" name="txttid" placeholder="Transcation-ID" class="form-control">
				</div>
				<div class="col-lg-3">
					<input type="text" name="txtrc" value="1000" class="form-control" readonly>
                                    			</div>
                </div>
                <br><br>
                                <div class="row">
					<div class="col-lg-1"></div>
					<div class="col-lg-3">
						<font color="#e6ccff">Number of Days*</font>
					</div>
					<div class="col-lg-3">
						<font color="#e6ccff">Amount*</font>
					</div>
                                </div>
                
                                <div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-3">
					<input type="number" min="1" max="5" name="txtnod" placeholder="Numberofdays" onblur="demo()" class="form-control">
				</div>
				<div class="col-lg-3">
					<input type="text" name="txtamt"  class="form-control" readonly>
                                       			</div>
                                </div>
			<br><br><br>
                	<div class="row"></div>
			<div class="row">
				<div class="col-lg-5"></div>
				<div class="col-lg-5">
					<input type="submit" name="" class="btn btn-primary"> &nbsp;
					<a href="cdashboard.jsp" class="btn btn-danger">Dashboard</a>
				</div>
				<div class="col-lg-4"></div>
				<div class="row"> </div>
			
		</div>
		
	
		
</body>
</html>