<%-- 
    Document   : dsignout
    Created on : 22 Apr, 2023, 10:55:28 AM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    session.invalidate();
    response.sendRedirect("driverlogin.html");
%>