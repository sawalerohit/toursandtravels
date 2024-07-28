<%-- 
    Document   : driverR
    Created on : 9 Mar, 2023, 11:32:52 AM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%


    String fname="'"+request.getParameter("txtfname") +"'";
    String aadhaar="'"+request.getParameter("txtaadhaar")+"'";
    String mobno="'"+request.getParameter("txtnumber")+"'";
    String address="'"+request.getParameter("txtaddress")+"'";
    String email="'"+request.getParameter("txtemail")+"'";
    String pass="'"+request.getParameter("txtpassword")+"'";
    String pm="'"+request.getParameter("txtpm")+"'";
    String tid="'"+request.getParameter("txttid")+"'";
    int rc=Integer.parseInt(request.getParameter("txtrc"));
    String lno="'"+request.getParameter("lno")+"'";
    //out.println(fname+" "+aadhaar+" "+mobno+" "+address+" "+email+" "+pass+" "+pm+" "+tid+" "+rc+" "+lno);
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
        Statement st=con.createStatement();
        
        String q="insert into driverregister(name,username,password,mobile,address,aadhaar,pm,tid,lno,dflag,rc)values("+fname+","+email+","+pass+","+mobno+","+address+","+aadhaar+","+pm+","+tid+","+lno+",0,"+rc+")";
        out.println(q);
        st.executeUpdate(q);
        st.close();
        con.close();
        response.sendRedirect("driverlogin.html");
    }
    catch(Exception e)
    {
        
    }

%>

