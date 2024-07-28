<%-- 
    Document   : custsignout
    Created on : 21 Apr, 2023, 10:37:33 AM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("customerlogin.html");

%>