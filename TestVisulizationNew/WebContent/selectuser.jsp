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


<%
if(!(request.getMethod().equals("POST")))
{
	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	//String Condition = "user1";

	String[] ConValues = new String[2000];
	int ConCount=0,i=0;
	String Query1="";
%>


<div style="float:left">
<img src="images/img/book1.jpg" width="425" height="282" />
</div>
<div style="float:left;width:100px">
</div>
<div style="float:left">
<FORM Name='DelForm' ACTION="Vizuval.jsp">
			<CENTER><B><FONT face="verdana"> Select User  </FONT></B></CENTER><BR><BR>
		<TABLE align=center width="25%" bordercolor=#D8D8D8 border=0>
		<TR>
			<TH>USER</TH>
			<TD><SELECT NAME="user11">
			<OPTION Value="">Select</OPTION>

<%
	try{
		con=DB.getCon();
			stmt =  con.createStatement();

			//if(Condition.trim().equalsIgnoreCase("undefined")){
				System.out.println("in if");
				Query1 = "Select * from login";
	
			
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
		}catch(Exception e)
			{
			e.printStackTrace();
			
			%><%=e%><%
		}
%>
		</SELECT></TD>
		</TR>
		<TR><TD align=center Colspan=2><Input type='Submit' name='submit' value='select'></TD></TR>
		</TABLE>
</FORM>

<br><br><br>
            <h3><a href="MultiUserGraph.jsp">Click Here</a>To See Multi User Graph</h3>
            <br />
            <h3><a href="MultiLineGraph.jsp">Click Here</a>To See Multi User Line Graph</h3>
            
</div>		
		
		

</BODY>


<%}%>