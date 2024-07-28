<%-- 
    Document   : bookvehicledone
    Created on : 22 Feb, 2023, 12:20:09 PM
    Author     : saliq
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%

    try
    {
        Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
      Statement st=con.createStatement();
      int vid=Integer.parseInt(request.getParameter("txtvid"));
      String vtype="'"+request.getParameter("txtvtype") +"'";
      String vname="'"+request.getParameter("txtvname") +"'";
      int cc=Integer.parseInt(request.getParameter("txtcc"));
      String ino="'"+request.getParameter("txtino") +"'";
      String pno="'"+request.getParameter("txtpno") +"'";
      String rno="'"+request.getParameter("txtrno") +"'";
      String cno="'"+request.getParameter("txtcno") +"'";
      String eno="'"+request.getParameter("txteno")+"'";
      int rpk=Integer.parseInt(request.getParameter("txtrpk"));
      String ptype="'"+request.getParameter("txtptype")+"'";
      int amt=Integer.parseInt(request.getParameter("txtamt"));
       String tid="'"+request.getParameter("txttid") +"'";
      String ano="'"+request.getParameter("txtano") +"'";
      String dd="'"+request.getParameter("txtdate") +"'";
      String gg="'"+(String)session.getAttribute("cname")+"'";
      String query="insert into payment(vid,vtype,vname,cc,ino,pno,rno,cno,eno,rpk,ptype,deposit,tid,aadhaar,date,cname)values("+vid+","+vtype+","+vname+","+cc+","+ino+","+pno+","+rno+","+cno+","+eno+","+rpk+","+ptype+","+amt+","+tid+","+ano+","+dd+","+gg+")";
      out.println(query);
      st.executeUpdate(query);
      Statement st1=con.createStatement();
      st1.executeUpdate("update vehicle set vflag=1 where vid="+vid+"");
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


/* String vt = "'"+request.getParameter("vtype")+"'";
 String vn = "'"+request.getParameter("vcname")+"'";
  int cc = Integer.parseInt(request.getParameter("cc"));
 String on = "'"+request.getParameter("owner")+"'";
 String mn = "'"+request.getParameter("merchantname")+"'";
 String a = "'"+request.getParameter("address")+"'";
 String inno = "'"+request.getParameter("ino")+"'";
 String pu = "'"+request.getParameter("puc")+"'";
 String rc = "'"+request.getParameter("rc")+"'";
 String cs = "'"+request.getParameter("cs")+"'";
 String en = "'"+request.getParameter("en")+"'";
 int rpk = Integer.parseInt(request.getParameter("rpk"));
 int pc = Integer.parseInt(request.getParameter("pc"));
 int aa = Integer.parseInt(request.getParameter("aadhaar"));
String mmname=(String)session.getAttribute("mname");
*/
 //String query = "insert into hvpayment (vtype,vcname,cc,oname,mname,maddress,ino,pno,rno,cno,eno,rpk,pc,aadhaar,vflag,muname)values("+vt+","+vn+","+cc+","+on+","+mn+","+a+","+inno+","+pu+","+rc+","+cs+","+en+","+rpk+","+pc+","+aa+",0,"+mmname+")";
