

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>   <style> body{
          background-image:url(130.jpg);
          background-size: cover;
      }</style>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<title></title>
	<script type="text/javascript">
		/*function validate()
		{
			var a = document.forms[0].elements[1].value;
			if (a.length!=12)
			{
				document.getElementById("a").innerHTML="<font color = red> 12 Digits are required";
				return false;
			}
			var b = document.forms[0].elements[2].value;
			if(b.length!=10)
			{
				document.getElementById("b").innerHTML="<font color = red>10 Digits required";
				return false;
			}
			var c = document.forms[0].elements[5].value;
			var d = document.forms[0].elements[6].value;
			if (c.length<8) 
			{
				document.getElementById("c").innerHTML="<font color = red>Minimum 8 Digits required";
				return false;
			}
			
			if (d!=c)
			{
				document.getElementById("c").innerHTML="<font color = red>Password Does not Match";
				return false;
			}


		}*/
	</script>
	<style type="text/css">
		body{
			background-image:url(bl.jpg) ;
			background-size: cover;
		}
	</style>
</head>
<body style="background-color:#000000;">
	<h3 align="center"><font color="#99ccff" face="Times roman" size="16"><b>Heavy Vehicle-Registration</b></font></h3>
	<h4 align="center"><font color="#bb99ff"></font></h4>
<form action="heavyvehicledone.jsp"  method="post">
<br><br><br>
	<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-3">
				  <font color="#f0f0f5">Vehicle Type</font>
			        </div>
			<div class="col-lg-3">
				  <font color="#f0f0f5">Company Name</font>
			</div>
			    <div class="col-lg-3">
                                <font color="#f0f0f5">Cubic Capacity(cc)</font>
                            </div>
                                
                                
        </div> 
		
		<div class="row">
		    <div class="col-lg-1"></div>
			<div class="col-lg-3">
                            <select name="vtype" placeholder="Vehicle Type" class="form-control">
                                <option>Mini-Bus</option>
                                <option>Travel-Bus</option>
                                <option>Sleeper-Bus</option>
                                <option>RV-Bus</option>

                            </select>
			
			</div>  
			    <div class="col-lg-3">
				<input type="text" name="vcname" placeholder="Vehicle" class="form-control" required>
				
			    </div>
			      <div class="col-lg-3">
				<input type="text" name="cc" placeholder="Enter CC" class="form-control" required>
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
				<input type="text" name="owner" placeholder="Enter Name" class="form-control" required>
				<p id="a"></p>
			</div>
			<div class="col-lg-3">
				<input type="text" name="merchantname" placeholder="Enter Merchant Name" class="form-control" required>
				<p id="b"></p>
			</div>
			<div class="col-lg-3">
				<textarea name="address" placeholder="Enter Address" class="form-control" required></textarea>

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
						<input type="text" name="ino" placeholder="Enter Insurance" class="form-control" required>
					</div>
				<div class="col-lg-3">
						<input type="text" name="puc" placeholder="Enter PUC Number" class="form-control"required>
					
					</div>
				<div class="col-lg-3">
						<input type="text" name="rc" placeholder="Enter RC Number" class="form-control">
						
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
				<input type="text" name="cs" placeholder="Enter Number" class="form-control" required>
			
			</div>
			    <div class="col-lg-3">
				<input type="text" name="en" placeholder="Enter Number" class="form-control" required>
				
			    </div>
                                <div class="col-lg-3">

                                        <select name="rpk" placeholder="Select" class="form-control">
                                            <option>10</option>
                                            <option>15</option>
                                            <option>20</option>
                                        </select>
                                </div>
                   
                    
			     
                </div>  <br<br><br><br><br>
                   
                                    <div class="row">
                                        <div class="col-lg-1"></div>
                                        <div class="col-lg-3" ><font color="#f0f0f5">Person Capacity</font></div>
                                        <div class="col-lg-3" ><font color="#f0f0f5">Aadhaar Number</font></div>
                                        </div>
                                    
                                  
                                        
                                    
                                <div class="row">
                                    <div class="col-lg-1"></div>
                                    <div class="col-lg-3">
                                    <input type="number" name="pc" min="1" max="40" class="form-control" required>
                                    </div>
                                     <div class="col-lg-3">
                                    <input type="text" name="aadhaar" placeholder="Enter 12 Digit number"class="form-control" required>
                                    </div>
                                   
                                </div>

                                    
				    <br><br><br>
                                        
                                        
                                    <br><br><br><br>
		
			<div class="row"></div>
			<div class="row">
				<div class="col-lg-5"></div>
				<div class="col-lg-5">
					<input type="submit" name="submit" class="btn btn-primary"> &nbsp;
                                        <a href="mdashboard.jsp" class="btn btn-danger"><font face="">DASHBOARD</font></a>
				</div>
				<div class="col-lg-4"></div>
				<div class="row"> </div>
			
		</div>
		

		      
			
		
</body>
</html>



