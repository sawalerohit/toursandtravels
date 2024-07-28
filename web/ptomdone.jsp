<%-- 
    Document   : ptomdone
    Created on : 11 Apr, 2023, 10:25:18 AM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%!
    int pid,vid;
    String mname;
    ResultSet rs,rs1;
%>
<%
    pid=Integer.parseInt(request.getParameter("a"));
    vid=Integer.parseInt(request.getParameter("b"));
    Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      Statement st1=con.createStatement(); 
      rs=st.executeQuery("select muname from vehicle where vid="+vid+"");
       rs.next();
       rs1=st1.executeQuery("select * from payment where pid="+pid+"");
       rs1.next();
       mname=rs.getString(1);
       out.println(mname);
      
%>
<html>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript"> 
      function demo()
      {
          var p=document.forms[0].deposit.value;
          var q=document.forms[0].commission.value;
          var amt=p-(p*q/100);
          document.forms[0].ptransfer.value=amt;
      }
  </script>
    <body>
        <h2><div align="center">Admin Payment to Merchant</div></h2>
       <form action="apdone.jsp"  method="post">
<br><br><br>
	<div class="row">

		
			<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-3">
				  <font color="black">Merchant User-name*</font>
			</div>
			<div class="col-lg-3">
				  <font color="black">Customer User-name*</font>
			</div>
			    <div class="col-lg-3">
				  <font color="black">Deposit</font>
			</div> 
                        <div class="col-lg-1"></div>
	</div>

	<div class="row">
		<div class="col-lg-1"></div>
			<div class="col-lg-3">
				<input type="text" name="muname"  class="form-control" value="<%=mname%>" readonly>
				<p id="a"></p>
			</div>
			<div class="col-lg-3">
				<input type="text" name="cuname" value="<%=rs1.getString(17)%>" class="form-control" readonly>
				<p id="b"></p>
			</div>
			<div class="col-lg-3">
				<input type="text" name="deposit" value="<%=rs1.getInt(13)%>" class="form-control" readonly>
				<p id="b"></p>
			</div>
			<div class="col-lg-1"></div>
		</div>
		
		<br><br><br>
				<div class="row">
					<div class="col-lg-1"></div>
					<div class="col-lg-3">
						<font color="black">Payment Transferred</font>
					</div>
					<div class="col-lg-3">
						<font color="black">Commission</font>
					</div>
					<div class="col-lg-3">
						<font color="black">Transaction ID</font>
					</div>
				</div>
		<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-3">
                                    <input type="text" name="ptransfer" class="form-control" readonly>
				</div>
				<div class="col-lg-3">
					<input type="text" name="commission" onblur="demo()" class="form-control">
				</div>
				<div class="col-lg-3">
					<input type="text" name="tid"  class="form-control" >
                                    			</div>
                </div>
                <br><br><br>
                                <div class="row">
					<div class="col-lg-1"></div>
					<div class="col-lg-3">
						<font color="black">Payment Method</font>
					</div>
					<div class="col-lg-3">
						<font color="black">Customer Transaction</font>
					</div>
                                        <div class="col-lg-3">
						<font color="black">Customer Pay Method</font>
					</div>
                                </div>
                
                                <div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-3">
                                    <select name="ptype"class="form-control">
                                        <option>Gpay</option>
                                        <option>PhonePe</option>
                                        <option>Paytm</option>
                                    </select>
				</div>
				<div class="col-lg-3">
					<input type="text" name="ctid"  class="form-control" value="<%=rs1.getString(14)%>" readonly>
                                </div>
                                <div class="col-lg-3">
					<input type="text" name="cpm"  class="form-control" value="<%=rs1.getString(12)%>" readonly>
                                </div>
                                </div>
			<br><br><br>
                	<div class="row"></div>
			<div class="row">
				<div class="col-lg-5"></div>
				<div class="col-lg-5">
					<input type="submit" name="" class="btn btn-primary"> &nbsp;
					<a href="admindashboard.jsp" class="btn btn-danger">Dashboard</a>
				</div>
				<div class="col-lg-4"></div>
				<div class="row"> </div>
			
		</div>
		
	
		
</body>
    
</html>
