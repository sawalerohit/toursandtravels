

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
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
     rs=st.executeQuery("select hvid,vtype,vcname,cc,ino,pno,rno,cno,eno,rpk,pc from heavyvehicle where hvid="+x+"");
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
	<title></title>
	
	<style type="text/css">
		body{
			background-image:url(bl.jpg) ;
			background-size: cover;
		}
	</style>
</head>
<body style="background-color:#000000;">
     <p align="center"><img src="scanner.png" class="img img-thumbnail"></p>
    <br><br><br><br>
	<h3 align="center"><font color="#99ccff" face="Times roman" size="16"><b>Book Heavy Vehicle-Registration</b></font></h3>
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
                                <option><%=rs.getString(2)%></option>

                            </select>
			
			</div>  
			    <div class="col-lg-3">
				<input type="text" name="vcname" placeholder="Vehicle" class="form-control" value="<%=rs.getString(3)%>" readonly>
				
			    </div>
			      <div class="col-lg-3">
				<input type="text" name="cc" placeholder="Enter CC" class="form-control" value="<%=rs.getString(4)%>" readonly>
                              </div>
		</div>
			
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
						<input type="text" name="insurance" placeholder="Enter Insurance" class="form-control" value="<%=rs.getString(5)%>" readonly>
					</div>
				<div class="col-lg-3">
						<input type="text" name="puc" placeholder="Enter PUC Number" class="form-control" value="<%=rs.getString(6)%>" readonly>
					
					</div>
				<div class="col-lg-3">
						<input type="text" name="rc" placeholder="Enter RC Number" class="form-control" value="<%=rs.getString(7)%>" readonly>
						
					</div>
				
				    </div>
				    <br><br><br><br><br>
                                    
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
				<input type="text" name="cs" placeholder="Enter Number" class="form-control" value="<%=rs.getString(8)%>" readonly>
			
			</div>
			    <div class="col-lg-3">
				<input type="text" name="en" placeholder="Enter Number" class="form-control" value="<%=rs.getString(9)%>" readonly>
				
			    </div>
                                <div class="col-lg-3">

                                        <select name="rpk" placeholder="Select" class="form-control" value="<%=rs.getString(10)%>" readonly>
                                            <option>10</option>
                                            <option>15</option>
                                            <option>20</option>
                                        </select>
                                </div>
                        
                </div>
                                            
                                            <br<br><br><br><br><br><br>
                   
                                  

                                           
                   
                                    <div class="row">
                                        <div class="col-lg-1"></div>
                                        <div class="col-lg-3" ><font color="#f0f0f5">Payment Type</font></div>
                                         <div class="col-lg-3" ><font color="#f0f0f5">Deposit</font></div>
                                          <div class="col-lg-3" ><font color="#f0f0f5">Aadhaar Number</font></div>
                                    </div>
                                    
                                    
                                    <div class="row">
                                        <div class="col-lg-1"></div>
                                        <div class="col-lg-3">
                                            <select type="text" name="txtptype" placeholder="Enter Number" class="form-control" value="" readonly>
                                            <option>GPAY</option>
                                            <option>PHONEPE</option>
                                            <option>PAYTM</option>
                                            <option>BHIMPE</option>
                                        </select>
                                        </div>
                                            <div class="col-lg-3">
                                            <input type="text" name="deposit" placeholder="Enter Number" class="form-control" value="8000" readonly>
                                            </div>
                                                <div class="col-lg-3">
                                                  <input type="text" name="aadhaar" placeholder="Enter Number" class="form-control" value="<%=rs.getString(11)%>" readonly>
                                                </div>
                                    </div>
                                             
                                            <br<br><br><br><br><br><br>
                                            
                                            
                                                <div class="row">
                                        <div class="col-lg-1"></div>
                                        <div class="col-lg-3" ><font color="#f0f0f5">Person Capacity</font></div>
                                         <div class="col-lg-3" ><font color="#f0f0f5">Transaction ID</font></div>
                                          <div class="col-lg-3" ><font color="#f0f0f5">Book-Date</font></div>
                                    </div>
                                    
                                    
                                    <div class="row">
                                        <div class="col-lg-1"></div>
                                        <div class="col-lg-3">
                                            <input type="text" name="pc" placeholder="Enter Number" class="form-control" value="<%=rs.getString(11)%>" readonly>
                                        </div>
                                            <div class="col-lg-3">
                                            <input type="text" name="tid" placeholder="Enter Number" class="form-control" required>
                                            </div>
                                                <div class="col-lg-3">
                                                  <input type="text" name="date" placeholder="Enter Number" class="form-control" value=" <%
                                            java.util.Date d=new java.util.Date();
                                            int dd=d.getDate();
                                            int mm=d.getMonth()+1;
                                            int yy=d.getYear()-100;
                                            out.println(dd+"-"+mm+"-"+"20"+yy);

                                         %>" class="form-control" readonly></div>
                                                </div>
                                 
                                            <br<br><br><br><br><br>    
                                                <div class="row">
                                    <div class="col-lg-4"></div>
                                    <div class="col-lg-3"><font color="#f0f0f5">ID</font></div>
                                    
                                </div>
                                <div class="row">
                                    <div class="col-lg-4"></div>
                                    <div class="col-lg-3">
                                        <input type="text" name="hvid" class="form-control" value="<%=rs.getInt(1)%>" readonly>
                                    </div>
                                    
                                </div>
                          <br><br>
		
			
			<div class="row">
				<div class="col-lg-5"></div>
				 <div class="col-lg-3"><input type="submit"  class="btn btn-primary">&nbsp;&nbsp;<a href="cdashboard.jsp" class="btn btn-danger">Dashboard</a></div>
				<div class="col-lg-4"></div>
				<div class="row"> </div>
                                
                                
                                                               

			
		</div>
		<br>

		      
			
		
</body>
</html>



