<%-- 
    Document   : DelUser1
    Created on : Feb 27, 2011, 7:38:51 AM
    Author     : pandu
--%>

<%@page import="db.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ page import="java.sql.*,java.io.*,java.util.Random"%>

<%@ page import="java.util.Vector"%>
    </head>
    <body bgcolor="#AAAAAA">
      <%

	Connection con=null;
	ResultSet rs=null;
    ResultSet rs1=null;
	Statement stmt=null;
    Statement stmt1=null;
     Statement stmt2=null;
	String Value = request.getParameter("user1");
	try{
		
		con=DB.getCon();
			stmt =  con.createStatement();
            stmt1 =  con.createStatement();
            stmt2 =  con.createStatement();


			String Query = "Delete from login where user1='"+Value+"'";
            String Query1 = "Delete from register where email='"+Value+"'";
            String Query2 = "Delete from result where emailid='"+Value+"'";
			int result = stmt.executeUpdate(Query);
            int result1 = stmt1.executeUpdate(Query1);
            int result2 = stmt2.executeUpdate(Query2);
			if( result > 0)	{
				%><P align=center><B>Deleted from the database sucessfully</B></P><%
			}
			else{
				%><P align=center><B>Error in deletion..please try again</B></P><%
			}
			stmt.close();
            stmt1.close();
			//con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
%>
    </body>
</html>
