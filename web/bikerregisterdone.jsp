<%-- 
    Document   : bikerregisterdone
    Created on : 19 Jan, 2023, 4:56:56 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>

        
<%
try
{
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
String mmname=(String)session.getAttribute("mname");
mmname="'"+mmname+"'";
out.println(mmname);
 
  Class.forName("com.mysql.jdbc.Driver");
    //Create Connection
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
    //Create Statement
    Statement st = con.createStatement();
    String query = "insert into vehicle (vtype,vname,cc,oname,mname,maddress,ino,pno,rno,cno,eno,rpk,vflag,muname)values("+vt+","+vn+","+cc+","+on+","+mn+","+a+","+in+","+pu+","+rc+","+cs+","+en+","+rpk+",0,"+mmname+")";

    st.executeUpdate(query);
    out.println(query);
    st.close();
    con.close();
    response.sendRedirect("mdashboard.jsp");
 
}
catch (Exception e)
{
    out.println(e);
}

%>

