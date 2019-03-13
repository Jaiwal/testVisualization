

<%@page import="db.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exam Selection Page</title>
        <%@page import=" java.sql.*" %>
    </head>
    <body bgcolor="#AAAAAA" >
     <%String str=request.getParameter("exam");
     try
             {
    	 Connection con=DB.getCon();
     Statement st=con.createStatement();
     String str1="select * from questions where subject="+str;
     ResultSet rs=st.executeQuery(str1);
     if(rs.next())
       {
       response.sendRedirect("test.jsp");

         }
     else
         {
         response.sendRedirect("exams.jsp");
         }
}catch(Exception e)
        {
    e.printStackTrace();
    }

     %>
     
    </body>
</html>
