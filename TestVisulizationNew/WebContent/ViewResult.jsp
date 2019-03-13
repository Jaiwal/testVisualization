<%@page import="db.DB"%>
<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*"%>
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
<table align="center" width="60%">
							<tr class=row_title>
							<th align="center">EmailId</th> <th align="center">Qno</th><th align="center">subject</th><th align="center">Question</th><th align="center">Your Answer</th><th align="center">Correct Answer</th><th align="center">Marks</th><th align="center">Level</th><th align="center">time</th><th align="center">nop</th>
							</tr>
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
			 
			int count  = Integer.parseInt(session.getAttribute("count").toString()); 
			System.out.println(user+""+count+""+subject);
			rs = stmt.executeQuery("Select * from result where count="+count+"and emailid='"+user+"'");
			if(rs!=null)
			{
			  int sum=0;
			while(rs.next())
			{
					%>
					 
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
					<%} %>	 
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
						else
						{
							%><tr class= "row_even"><td align=center colspan=8>Sorry No records Found</td>
			
				<%}
			
			
			  
			 
		}catch(Exception e){
			System.out.println(e);
			 
			 
		}

%>
</table><BR>
</BODY>
