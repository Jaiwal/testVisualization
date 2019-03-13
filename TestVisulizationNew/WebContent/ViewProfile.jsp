<%@page import="db.DB"%>
<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<%String user=(String)session.getAttribute("user");%>

<HEAD>

	<script LANGUAGE="Javascript" SRC="validate.js"></script>
	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY bgcolor="#AAAAAA">
<style type="text/css">
	.edit1{background-color:#FAFAFA;padding:5px}
	.edit2{padding: 5px}
</style>
<h2 align=center>My Profile</h2>

<%

	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	try{

			//con = com.TestCenter.ConnectionPool.getConnection();
 con=DB.getCon();
			stmt =  con.createStatement();
			String Query = "Select * from register where email='"+user+"'";
			rs = stmt.executeQuery(Query);

			int rCount=0;
			while(rs.next())
			{		String UserName=rs.getString(1);
					String EmailID=rs.getString(3);
					String Phone=rs.getString(4);
					String Gender=rs.getString(5);
					String Qualification=rs.getString(6);
					String Skills=rs.getString(7);
					String Experience=rs.getString(8);
					String Address=rs.getString(9);

					%>
<table align=center border=0 width="60%" cellpadding="0" cellspacing="0" style="color:#333;font-size: 12px;font-family: arial;">
		 <TR class="row_title">
		<Td align=center colspan=2><B><FONT COLOR="#330000">My Profile</FONT></B></td>
		<Td align=center colspan=2 height="30"></Td>
		<tr><td align=Left class="edit1" width="50%"><b>UserName</b></td>
				 <td align=Left class="edit1"><%=UserName%></td></tr>
				 <tr><td align=Left class="edit2"><b>EmailID</b></td>
				 <td align=Left class="edit2"><%=EmailID%></td></tr>
				<tr><td align=Left class="edit1"><b>Phone</b></td>
				 <td align=Left class="edit1"><%=Phone%></td></tr>
				 <tr><td align=Left class="edit2"><b>Gender</b></td>
				 <td align=Left class="edit2"><%=Gender%></td></tr>
				 <tr><td align=Left class="edit1"><b>Qualification</b></td>
				 <td align=Left class="edit1"><%=Qualification%></td></tr>
				  <tr><td align=Left class="edit2"><b>Skills</b></td>
				 <td align=Left class="edit2"><%=Skills%></td></tr>

				 <tr><td align=Left class="edit1"><b>Experience</b></td>
				 <td align=Left class="edit1"><%=Experience%></td></tr>

				 <tr><td align=Left class="edit2"><b>Address</b></td>
				 <td align=Left class="edit2"><%=Address%></td></tr>

					<%
				rCount++;
			}
			if( rCount == 0)	{%><tr class= "row_even"><td align=center colspan=8>Sorry No records Found</td><% }
			rs.close();
			stmt.close();
			con.close();
		}catch(Exception e)
			{
				e.printStackTrace();

			//rs.close();
			stmt.close();
			con.close();
			%><%=e%><%
		}

%>
</table><BR>

</BODY>
