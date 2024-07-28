<%-- 
    Document   : editdepositdone
    Created on : 17 Apr, 2023, 11:25:54 AM
    Author     : saliq
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    int vid=Integer.parseInt(request.getParameter("vid"));
    int deposit=Integer.parseInt(request.getParameter("deposit"));
    out.println(vid+""+deposit);
    //int id=Integer.parseInt(request.getParameter("id"));
    //out.println(id);
    
    try{
    Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
    st.executeUpdate("update hvpayment set eflag=1 ,deposit="+deposit+" where hvid="+vid+"");
    st.close();
    con.close();
    response.sendRedirect("mdashboard.jsp");
            
            }
    catch(Exception e)
    {
      out.println(e);  
    }

%>