<%-- 
    Document   : editdeposit
    Created on : 17 Apr, 2023, 10:53:41 AM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%!
ResultSet rs=null;
%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    //out.println(id);
    Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      String q="select hvid,vtype,company,deposit from hvpayment where hvid="+id+"";
     // out.println(q);
      rs=st.executeQuery(q);
     rs.next();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    
    <body>
        <h1><p align="Center" face="Aerial">DEPOSIT EDIT</p></h1>
        <form action="editheavydepositdone.jsp">
            <div class="row">
                <div class="col-lg-3"></div>
                            <div class="col-lg-3">
				 <font color="black">Vehicle Id</font></div>
			    <div class="col-lg-3">
				  <font color="black">Vehicle Type</font></div>
            </div>
            
           
                <div class="row">
		<div class="col-lg-3"></div>
			<div class="col-lg-3">
                            <input type="text" name="vid" class="form-control" value="<%=rs.getInt(1)%>" readonly required></div>
			<div class="col-lg-3">
				<input type="text" name="vtype"  class="form-control" value="<%=rs.getString(2)%>" readonly required></div>
                </div>
            <br><br>
            
             <div class="row">
                <div class="col-lg-3"></div>
			    <div class="col-lg-3">
                                <font color="black">Vehicle Name</font></div>
                            <div class="col-lg-3">
                                <font color="black">Deposit</font></div>
            </div>
           
                <div class="row">
		<div class="col-lg-3"></div>
            
			<div class="col-lg-3">
                            <input type="text" name="vname"  class="form-control" value="<%=rs.getString(3)%>" readonly></div>
                        <div class="col-lg-3">
                            <input type="text" name="deposit" class="form-control" value="<%=rs.getInt(4)%>" ></div>
			
		</div>
            <br><br>
                <input type="submit" value="submit" class="btn btn-primary">&nbsp;&nbsp;<a href="mdashboard.jsp" class="btn btn-danger">Dashboard</a>          
            
        </form>
    </body>
</html>
