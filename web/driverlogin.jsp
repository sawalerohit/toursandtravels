<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%    try
    {
        String u=request.getParameter("txtuser");
        String p=request.getParameter("txtpass");
        out.println(u+""+p);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tt","root","");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select username,password,dflag from driverregister ");
        int flag=0;
        while(rs.next())
        {
            String uname=rs.getString("username");
            String pass=rs.getString("password");
            int dflag=rs.getInt("dflag");
            if(u.equals(uname) && p.equals(pass) && dflag==1 )
            {
                flag=1;
                break;
            }
        }
        if(flag==1)
        {
            session.setAttribute("dname",u);
            response.sendRedirect("ddashboard.jsp");
        }
        else
        {
            response.sendRedirect("driverlogin.html");
        }
    }
    catch(Exception e)
    {}

%>