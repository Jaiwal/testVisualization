<!--Interface Code to prompt condition value from end user-->

<%@page import="db.DB"%>
<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>

<%@ page import="java.util.Vector"%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="validate.js"></script>


	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY  bgcolor="#AAAAAA" class=SC>
<BR><BR><BR><BR>


<div style="float:left">
<img src="images/img/compudgter.jpg" width="400" height="294" />
</div>
<div style="float:left;width:100px">
</div>

<div style="float:left">
<P align=center><B>Delete User</B></P>

<%
	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	String Condition = "user1";
    
	String[] ConValues = new String[2000];
	int ConCount=0,i=0;
	String Query1="";
%>
<FORM Name='DelForm' ACTION="DelUser1.jsp">
			<CENTER><B><FONT face="verdana"> Select a record to delete from database </FONT></B></CENTER><BR><BR>
		<TABLE align=center width="25%" bordercolor=#D8D8D8 border=0>
		<TR>
		
			<TD><SELECT NAME="<%=Condition%>">
			<OPTION Value="">Select</OPTION>

<%
	try{
		 con=DB.getCon();
			stmt =  con.createStatement();
		
			System.out.println("in if");
			Query1 = "Select user1 from login where user1 not in('admin')";
			
			String str="";
			System.out.println(Query1);
			rs = stmt.executeQuery(Query1);
			int rCount=0;
				while(rs.next()){
					String x = rs.getString(1);
					ConValues[i]=x;
					%><OPTION Value=<%=ConValues[i]%>><%=ConValues[i]%></OPTION><%
					i++;
				}
			stmt.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
			stmt.close();
			con.close();
			%><%=e%><%
		}
%>
		</SELECT></TD>
		</TR>
		<TR><TD align=center Colspan=2><Input type='Submit' name='submit' value='Delete'></TD></TR>
		</TABLE>
		
</FORM>
</div>
</BODY>

