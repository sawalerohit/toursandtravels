<%-- 
    Document   : adminlogin
    Created on : 10 Jan, 2023, 6:17:48 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        String u=request.getParameter("txtemail");
        String p=request.getParameter("txtpassword");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select uname,password from admin");
        int flag=0;
        while(rs.next())
        {
            String uu=rs.getString(1);
            String pp=rs.getString(2);
            if(u.equals(uu) && p.equals(pp))
            {
                flag=1;
                break;
            }
        }
        if(flag==0)
        {
            response.sendRedirect("adminlogin.html");
        }
        else
        {
            
            session.setAttribute("aname",u);
            response.sendRedirect("admindashboard.jsp");
        }
    }
    catch(Exception e)
    {
        out.println(e);
    }


%>
