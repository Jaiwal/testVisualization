<%@page import="db.DB"%>
<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="validate.js"></script>



	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY bgcolor="#AAAAAA">
<h2 align=center>User Details</h2>

<%

	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	try{

			//con = com.TestCenter.ConnectionPool.getConnection();

			con=DB.getCon();
			
			
			stmt =  con.createStatement();
			String Query = "Select * from register";
			rs = stmt.executeQuery(Query);
			%>
						<table align="center" width="80%" class="designertable" cellpadding="0" cellspacing="0">
							<tr class=row_title style="font-size: 12px;font-family: arial;color: #333;padding:5px">
							<th align="center">UserName</th><th align="center">EmailID</th><th align="center">Phone</th><th align="center">Gender</th><th align="center">Qualification</th><th align="center">Skills </th><th align="center">Experience</th><th align="center">Address</th>
							</tr>
					<%
			int rCount=0;
			while(rs.next())
			{
					%>
					<tr style= <%=(rCount%2 == 0)? "background:#FFF" : ""%>>
						<td align="center" style="font-size: 12px;font-family: arial;color: #333;padding:5px"><%=rs.getString(1)%></td>
						<td align="center" style="font-size: 12px;font-family: arial;color: #333;padding:5px"><%=rs.getString(3)%></td>
						<td align="center" style="font-size: 12px;font-family: arial;color: #333;padding:5px"><%=rs.getString(4)%></td>
						<td align="center" style="font-size: 12px;font-family: arial;color: #333;padding:5px"><%=rs.getString(5)%></td>
						<td align="center" style="font-size: 12px;font-family: arial;color: #333;padding:5px"><%=rs.getString(6)%></td>
						<td align="center" style="font-size: 12px;font-family: arial;color: #333;padding:5px"><%=rs.getString(7)%></td>
						<td align="center" style="font-size: 12px;font-family: arial;color: #333;padding:5px"><%=rs.getString(8)%></td>
						<td align="center" style="font-size: 12px;font-family: arial;color: #333;padding:5px"><%=rs.getString(9)%></td>


					</tr>
					<%
				rCount++;
			}
			if( rCount == 0)	{%><tr class= "row0"><td align=center colspan=8>Sorry No records Found</td><% }
			rs.close();
			stmt.close();
			con.close();
		}catch(Exception e){
			//rs.close();
			stmt.close();
			con.close();
			%><%=e%><%
		}

%>
</table><BR>

</BODY>
