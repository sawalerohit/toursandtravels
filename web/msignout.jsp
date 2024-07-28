<%-- 
    Document   : msignout
    Created on : 18 Apr, 2023, 3:29:36 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("merchantlogin.html");

%>