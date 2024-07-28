<%-- 
    Document   : driverp
    Created on : 7 Apr, 2023, 10:35:40 AM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    String fn="'"+request.getParameter("txtfname") +"'";
    String dn="'"+request.getParameter("txtduname") +"'";
    String cname="'"+request.getParameter("txtcname") +"'";
    String cuname="'"+request.getParameter("txtcuname") +"'";
    String pm="'"+request.getParameter("txtpm") +"'";
    String tid="'"+request.getParameter("txttid") +"'";
    int rc=Integer.parseInt(request.getParameter("txtrc"));
    int nod=Integer.parseInt(request.getParameter("txtnod"));
    int amt=Integer.parseInt(request.getParameter("txtamt"));
    String dobook="'"+(String)session.getAttribute("dobook")+"'";
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      Statement st1=con.createStatement();
      String q="insert into dpayment(fullname,duname,cname,cuname,pmethod,tid,cpd,days,amt,dobook)values("+fn+","+dn+","+cname+","+cuname+","+pm+","+tid+","+rc+","+nod+","+amt+","+dobook+")";
 out.println(q);
   String q1="update driverregister set status=1 where username="+dn+"";
   out.println(q1);
      st.executeUpdate(q);
      st1.executeUpdate(q1);
      st1.close();
      
      st.close();
      con.close();
      response.sendRedirect("cdashboard.jsp");
      
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>