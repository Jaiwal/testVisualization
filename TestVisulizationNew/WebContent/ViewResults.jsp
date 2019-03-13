<%@page import="db.DB"%>
<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<%String user=(String)session.getAttribute("user");
String subject=(String)session.getAttribute("subjj");
System.out.println("ssssss:"+subject);
%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="validate.js"></script>



	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY bgcolor="#AAAAAA">
<h2 align=center>Test Details</h2>
<%

	Connection con=null;
	ResultSet rs=null,rs1=null;
	Statement stmt=null,stmt2;
	String testid;
	int maxqno=0;
	try{

			//con = com.TestCenter.ConnectionPool.getConnection();

			con=DB.getCon();
			
			stmt =  con.createStatement();
			stmt2 = con.createStatement();
			String Query1 = "Select emailid from result where emailid = '"+user+"'";
			System.out.println(Query1);
			rs1=stmt.executeQuery(Query1);
			if(rs1.next()){
			testid=rs1.getString("emailid");
			String Query2="Select * from questions where subject='"+subject+"'";
			String Query = "Select * from result where emailid= '"+testid+"'";
			System.out.println(Query);
			rs = stmt.executeQuery(Query);
			ResultSet rs2 = stmt2.executeQuery(Query2);
			//int i=0;
			while(rs2.next())
			{System.out.println("In RS2 while");
				maxqno++;
				System.out.println("while Exit");
			}
            
			%>
						<table align="center" width="60%">
							<tr class=row_title>
							<th align="center">EmailId</th> <th align="center">Qno</th><th align="center">subject</th><th align="center">Question</th><th align="center">Your Answer</th><th align="center">Correct Answer</th><th align="center">Marks</th><th align="center">Level</th><th align="center">time</th><th align="center">nop</th>
							</tr>
					<%

			int rCount=0; int sum=0;
			while(rs.next())
			{
					%>
					<tr class= <%=(rCount%2!=0)? "row_even" : "row_odd"%>>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getInt(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getInt(7)%> <% sum+=rs.getInt(7); %></td>
                        <td><%=rs.getInt(8)%></td>
                        <td><%=rs.getString(9)%></td>
                        <td><%=rs.getString(10)%></td>
					
					</tr>
					<%
			
				rCount++;
					System.out.println(rCount);
					if(rCount%maxqno==0)
					{
						%>
						<tr >
						<td>TOTAL MARKS</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<% out.println("<td>"+sum+"</td>");%>
                        <td></td>
                        <td></td>
                        <td></td>
						
						<%sum=0;
					}
			}
			
			if( rCount == 0)	{%><tr class= "row_even"><td align=center colspan=8>Sorry No records Found</td><% }
			
			}
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
