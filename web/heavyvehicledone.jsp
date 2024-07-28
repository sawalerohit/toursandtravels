<%-- 
    Document   : bikerregisterdone
    Created on : 19 Jan, 2023, 4:56:56 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%

    try
    {
        Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
     // int hvid=Integer.parseInt(request.getParameter("hvid"));
      String vtype="'"+request.getParameter("vtype") +"'";
      String vcname="'"+request.getParameter("vcname") +"'";
      int cc=Integer.parseInt(request.getParameter("cc"));
      String ino="'"+request.getParameter("owner") +"'";
      String pno="'"+request.getParameter("merchantname") +"'";
      String rno="'"+request.getParameter("address") +"'";
      String cno="'"+request.getParameter("ino") +"'";
      String eno="'"+request.getParameter("puc")+"'";
      String rpk="'"+request.getParameter("rc")+"'";
      String ptype="'"+request.getParameter("cs")+"'";
      String deposit="'"+request.getParameter("en")+"'";
      String tid="'"+request.getParameter("rpk")+"'";
      String aadhaar="'"+request.getParameter("aadhaar")+"'";
      int pc =Integer.parseInt(request.getParameter("pc"));
      String mname="'"+(String)session.getAttribute("mname")+"'";
    String query="insert into heavyvehicle(vtype,vcname,cc,oname,mname,maddress,ino,pno,rno,cno,eno,rpk,pc,aadhaar,muname)values("+vtype+","+vcname+","+cc+","+ino+","+pno+","+rno+","+cno+","+eno+","+rpk+","+ptype+","+deposit+","+tid+","+pc+","+aadhaar+","+mname+")";
      out.println(query);
      st.executeUpdate(query);
      //Statement st1=con.createStatement();
      //st1.executeUpdate("update heavyvehicle set vflag=1 where hvid="+hvid+"");
      //st1.close();
      
      st.close();
      con.close();
      response.sendRedirect("mdashboard.jsp");
      
    }
    catch(Exception e)
    {
        out.println(e);
    }



%>
