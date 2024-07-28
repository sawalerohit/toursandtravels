<%-- 
    Document   : availabilityupdate
    Created on : 18 Apr, 2023, 3:38:00 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h1><p align="Center" face="Aerial">Update Status</p></h1>
        <form action="availabled.jsp">
            <div class="row">
                <div class="col-lg-3"></div>
                            <div class="col-lg-3">
				 <font color="black">Driver Username</font></div>
			    <div class="col-lg-3">
				  <font color="black">Available</font></div>
            </div>
            
           
                <div class="row">
		<div class="col-lg-3"></div>
			<div class="col-lg-3">
                            <input type="text" name="duname" class="form-control" value="<%=(String)session.getAttribute("dname")%>" readonly></div>
			<div class="col-lg-3">
				<input type="text" name="status"  class="form-control" value="I am available" readonly></div>
                </div>
            <br><br>
            <div class="row">
                <div class="col-lg-5"></div>
                <div class="col-lg-7"><input type="submit" value="submit" class="btn btn-primary">&nbsp;&nbsp;<a href="ddashboard.jsp" class="btn btn-danger">Dashboard</a></div>
                     
            </div>