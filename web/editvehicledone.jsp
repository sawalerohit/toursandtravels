<%-- 
    Document   : editvehicledone
    Created on : 24 Jan, 2023, 4:58:29 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
String vt = "'"+request.getParameter("vtype")+"'";
 String vn = "'"+request.getParameter("vname")+"'";
  int cc = Integer.parseInt(request.getParameter("cc"));
 String on = "'"+request.getParameter("owner")+"'";
 String mn = "'"+request.getParameter("merchantname")+"'";
 String a = "'"+request.getParameter("address")+"'";
 String in = "'"+request.getParameter("Insurance")+"'";
 String pu = "'"+request.getParameter("PUC")+"'";
 String rc = "'"+request.getParameter("RC")+"'";
 String cs = "'"+request.getParameter("CS")+"'";
 String en = "'"+request.getParameter("EN")+"'";
 int rpk = Integer.parseInt(request.getParameter("RPK"));
 int vid=Integer.parseInt(request.getParameter("txtvid"));
 int status=Integer.parseInt(request.getParameter("txtstatus"));
 Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
   Statement st = con.createStatement();
   String q="update vehicle set vtype="+vt+",vname="+vn+",cc="+cc+",oname="+on+",mname="+mn+",maddress="+a+",ino="+in+",pno="+pu+",rno="+rc+",cno="+cs+",eno="+en+",rpk="+rpk+",vflag="+status+" where vid="+vid+"";
   out.println(q);
   st.executeUpdate(q);
   
   st.close();
   con.close();
   response.sendRedirect("viewvehicle.jsp");
%>
