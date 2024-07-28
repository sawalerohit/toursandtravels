<%-- 
    Document   : editvehicle
    Created on : 24 Jan, 2023, 4:43:23 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    out.println(id);
     Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
   Statement st = con.createStatement();
   ResultSet rs=st.executeQuery("select * from vehicle where vid="+id+"");
   rs.next();
  
%>

<html>
<head>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<title></title>
	<script type="text/javascript">
	</script>
	<style type="text/css">
		body{
			background-image:url(bl.jpg) ;
			background-size: cover;
		}
	</style>
</head>
<body style="background-color:#000000;">
	<h3 align="center"><font color="#99ccff" face="Times roman" size="16"><b>Vehicle Data</b></font></h3>
	<h4 align="center"><font color="#bb99ff"></font></h4>
<form action="editvehicledone.jsp"  method="post">
<br><br><br>
	<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-3">
				  <font color="#f0f0f5">Vehicle Type</font>
			        </div>
			<div class="col-lg-3">
				  <font color="#f0f0f5">Vehicle Name</font>
			</div>
			    <div class="col-lg-3">
                                <font color="#f0f0f5">Cubic Capacity(cc)</font></div>
        </div> 
		
		<div class="row">
		    <div class="col-lg-1"></div>
			<div class="col-lg-3">
                            <select name="vtype" placeholder="Vehicle Type" class="form-control">
                                <option>Bike</option>
                                <option>Car</option>
                                <option>Jeep</option>
                            </select>
			
			</div>  
			    <div class="col-lg-3">
				<input type="text" value="<%=rs.getString(3)%>" name="vname" placeholder="Vehicle" class="form-control" required>
				
			    </div>
			      <div class="col-lg-3">
				<input type="text" value="<%=rs.getInt(4)%>" name="cc" placeholder="Enter CC" class="form-control" required>
                              </div>
		</div>
			<br>
			<br><br><br>
			<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-3">
				  <font color="#f0f0f5">Owner Name</font>
			</div>
			<div class="col-lg-3">
				  <font color="#f0f0f5">Merchant Name</font>
			</div>
			    <div class="col-lg-3">
				  <font color="#f0f0f5">Merchant Address</font>
			</div> 
	</div>

	<div class="row">
		<div class="col-lg-1"></div>
			<div class="col-lg-3">
				<input type="text" value="<%=rs.getString(5)%>" name="owner" placeholder="Enter Name" class="form-control" required>
				<p id="a"></p>
			</div>
			<div class="col-lg-3">
				<input type="text" value="<%=rs.getString(6)%>" name="merchantname" placeholder="Enter Merchant Name" class="form-control" required>
				<p id="b"></p>
			</div>
			<div class="col-lg-3">
				<textarea name="address"  placeholder="Enter Address" class="form-control" required><%=rs.getString(7)%></textarea>

			</div>
			<div class="col-lg-1"></div>
		</div>
		<br>
		<br><br><br>
		<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-3">
				  <font color="#f0f0f5">Insurance</font>
			</div>
			<div class="col-lg-3">
				 <font color="#f0f0f5">PUC</font>
			</div>
			    <div class="col-lg-3">
				  <font color="#f0f0f5">RC</font>
			</div> 
			    <div class="col-lg-1">
			    </div>
		</div>
		<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-3">
						<input type="text" value="<%=rs.getString(8)%>" name="Insurance" placeholder="Enter Insurance" class="form-control" required>
					</div>
				<div class="col-lg-3">
						<input type="text" value="<%=rs.getString(9)%>" name="PUC" placeholder="Enter PUC Number" class="form-control"required>
					
					</div>
				<div class="col-lg-3">
						<input type="text" name="RC" value="<%=rs.getString(10)%>" placeholder="Enter RC Number" class="form-control">
						
					</div>
				<div class="col-lg-1"></div>
				    </div>
				    <br><br>
				    <br><br><br>
                                    
                    <div class="row">
                        <div class="col-lg-1">
                        </div>
                                    <div class="col-lg-3">
                                         <font color="#f0f0f5">Chassis Number</font>
                                    </div>
                                	<div class="col-lg-3">
                                            <font color="#f0f0f5">Engine Number</font>
                                        </div>
                                            <div class="col-lg-3">
                                            <font color="#f0f0f5">Rate per Kilometer in Rupees</font>
                                            </div>
			
                    </div> 
		
		<div class="row">
		    <div class="col-lg-1"></div>
			<div class="col-lg-3">
				<input type="text" name="CS" value="<%=rs.getString(11)%>" placeholder="Enter Number" class="form-control" required>
			
			</div>
			    <div class="col-lg-3">
				<input type="text" name="EN" value="<%=rs.getString(12)%>" placeholder="Enter Number" class="form-control" required>
				
			    </div>
                                <div class="col-lg-3">

                                        <select name="RPK" placeholder="Select" class="form-control">
                                            <option>5</option>
                                            <option>10</option>
                                            <option>12</option>
                                        </select>
                                </div>
			     
		</div>
                                    
				    <br><br><br>
		
                                    <div class="row">
                                        <div class="col-lg-1"></div>
                                        <div class="col-lg-3" style="color:white">Status(Press 1 for Booked)</div>
                                    </div>
                                      <div class="row">
                                          <div class="col-lg-1"></div>
                                        <div class="col-lg-3"><input type="text" class="form-control" name="txtstatus" value="<%=rs.getInt(14)%>"></div>
                                    </div>
</div>
			<div class="row">
                            <div class="col-lg-5"><input type="hidden" value="<%=rs.getInt(1)%>" name="txtvid"></div>
				<div class="col-lg-5">
					<input type="submit" name="submit" class="btn btn-primary"> &nbsp;
                                        <a href="mdashboard.jsp" class="btn btn-danger"><font face="">DASHBOARD</font></a>
				</div>
				<div class="col-lg-4"></div>
				<div class="row"> </div>
			
		</div>
		

		      
			
		
</body>
</html>



