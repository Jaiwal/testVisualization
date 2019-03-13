<%@page import="db.DB"%>
<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<%String user=(String)session.getAttribute("user");%>


<HEAD>
	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
</HEAD>
<BODY bgcolor="#AAAAAA">

<h2 align=center>Update Profile</h2>
<%

	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	String	Phone	=request.getParameter("Phone");
	String	Gender	=request.getParameter("Gender");
	String  Qualification=request.getParameter("Qualification");
	String  Skills=request.getParameter("Skills");
	String  Experience=request.getParameter("Experience");
	String	Address	=request.getParameter("Address");
	try{

			//con = com.TestCenter.ConnectionPool.getConnection();

			con=DB.getCon();
			
			
			stmt =  con.createStatement();
			String Query = "Update register set phone = '"+Phone+"',gender = '"+Gender+"',qual = '"+Qualification+"',skills = '"+Skills+"',exp='"+Experience+"',address = '"+Address+"' where email='"+user+"'";
			System.out.println(Query);
			int result = stmt.executeUpdate(Query);
			if( result > 0)	{
				%><P align=center><h2 align=center>Updated sucessfully</h3>


				<%
			}
			else{
				%><P align=center><h2 align=center>Error in updating..please try again</h3>
				<A HREF="EditProfile.jsp">Back</A></P>

				<%
			}
			stmt.close();
			con.close();
		}catch(Exception e)
			{
            e.printStackTrace();
			stmt.close();
			con.close();
			%><%=e%><%
		}
%>
</BODY>
