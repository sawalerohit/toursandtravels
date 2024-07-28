<%@page language="java" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    String a="'"+request.getParameter("muname") +"'";
    String b="'"+request.getParameter("cuname") +"'";
    int c=Integer.parseInt(request.getParameter("deposit"));
    String d="'"+request.getParameter("ptransfer") +"'";
    int e=Integer.parseInt(request.getParameter("commission"));
    String f="'"+request.getParameter("tid") +"'";
    String g="'"+request.getParameter("ptype") +"'";
    String h="'"+request.getParameter("ctid") +"'";
    String i="'"+request.getParameter("cpm") +"'";
   try{
    Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      Statement st1=con.createStatement();
      String q="insert into adminpayment (mname,cname,deposit,commission,pdone,ctid,cpm,atid,apm)values("+a+","+b+","+c+","+e+","+d+","+h+","+i+","+f+","+g+")";
      out.println(q);
      st.executeUpdate(q);
      String q1="update payment set pflag=1 where tid="+h+"";
      out.println(q1);
      st1.executeUpdate(q1);
      st1.close();
      
      st.close();
      con.close();
      response.sendRedirect("admindashboard.jsp");
   }
   catch(Exception ee)
   {
       out.println(ee);
   }
%>