<%-- 
    Document   : customerlogin
    Created on : 9 Jan, 2023, 4:49:14 PM
    Author     : saliq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        String u=request.getParameter("txtemail");
        String p=request.getParameter("txtpassword");
        out.println(u+""+p);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select Username,Password,cflag from customerregister");
        int flag=0;
        while(rs.next())
        {
            String uu=rs.getString(1);
            String pp=rs.getString(2);
            int f=rs.getInt(3);
            if(u.equals(uu) && p.equals(pp) && f!=0)
            {
                flag=1;
                break;
            }
        }
        if(flag==0)
        {
            out.println("Fail");
            response.sendRedirect("customerlogin.html");
        }
        else
        {
            out.println("Pass");
            session.setAttribute("cname",u);
           response.sendRedirect("cdashboard.jsp");
        }
    }
    catch(Exception e)
    {
        out.println(e);
    }


%>