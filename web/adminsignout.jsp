<%-- 
    Document   : adminsignout
    Created on : 22 Apr, 2023, 11:01:37 AM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    session.invalidate();
    response.sendRedirect("adminlogin.html");
%>