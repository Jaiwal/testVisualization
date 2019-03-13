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

<h2 align=center>Update Profile</h2>
<FORM Name="EditDetails" ACTION="EditProfile1.jsp">
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


			}
			catch(Exception e)
		  {
			  e.printStackTrace();
			%><%=e%><%
		  }



if(rs!=null)
{
			%>
	<!--Displaying the table header-->

	<br>
<!--	<DIV STYLE="overflow:scroll;width:650px; height:400px;">-->


<%
int DisRow1=0;
			if(rs.next())
			{	String UserName=rs.getString(1);
					String EmailID=rs.getString(3);
					String Phone=rs.getString(4);
					String Gender=rs.getString(5);
					String Qualification=rs.getString(6);
					String Skills=rs.getString(7);
					String Experience=rs.getString(8);
					String Address=rs.getString(9);
					DisRow1++;

				%>
	<style type="text/css">
		.edit1{background-color:#FAFAFA;padding:5px}
		.edit2{padding: 5px}
	</style>				
		<table align=center border=0 width="60%" cellpadding="0" cellspacing="0" style="color:#333;font-size: 12px;font-family: arial;">
		 <TR class="row_title">
		<Td align=center colspan=2><B><FONT COLOR="#330000">Contact Information</FONT></B></td>
		</TR>
		  <tr><td align=Left class="edit1" width="50%"><b>User Name</b></td>
		 <td align=Left class="edit1"><font  color="black"><Input type=text name="UserName" value="<%=UserName%>" readonly></font></td></tr>

		  <tr><td align=Left width="50%" class="edit2"><b>Email ID</b></td>
		 <td align=Left  class="edit2"><font  color="black"><Input type=text name="EmailID" value="<%=EmailID%>" readonly></font></td></tr>

		 <tr><td align=Left class="edit1" ><b>PhoneNo</b></td>
		 <td align=Left class="edit1"><font  color="black"><Input type=text name="Phone" value="<%=Phone%>"></font></td></tr>

		<tr><td align=Left class="edit2"><b>Gender</b></td>
		 <td align=Left class="edit2"><font  color="black">
		 <SELECT id='Gender' name='Gender'>
					 <OPTION value='<%=Gender%>'><%=Gender%></OPTION>
					<OPTION value="Male">Male</OPTION>
					<OPTION value="Female">Female</OPTION>
					</SELECT>
		 </font></td></tr>
		 <tr><td align=Left class="edit1" ><b>Qualification</b></td>
		 <td align=Left class="edit1"><font  color="black"><Input type=text name="Qualification" value="<%=Qualification%>"></font></td></tr>

		<tr><td align=Left class="edit2"><b>Skills</b></td>
		 <td align=Left class="edit2"><font  color="black"><Input type=text name="Skills" value="<%=Skills%>"></font></td></tr>

		<tr><td align=Left class="edit1" ><b>Experience</b></td>
		 <td align=Left class="edit1"><font  color="black"><Input type=text name="Experience" value="<%=Experience%>"></font></td></tr>


		 <tr><td align=Left class="edit2"><b>Address</b></td>
		 <td align=Left class="edit2"><font  color="black"><textarea name="Address" Rows=5 cols =20><%=Address%></textarea></font></td></tr>


		</tr>
		<TR>
		<TH><INPUT TYPE="submit" value='Update' ></TH>
		<TH><INPUT TYPE="reset" value='Clear' ></TH></TR>
		</table>

	<%
	}
	rs.close();

	if(DisRow1==0)
{
	/*To write to the server if the resultset is null*/
	%>
		<CENTER>
			<tr><th colspan=6>No Records found</th></tr>
		</CENTER>
	<%}
}

%>


</table>

</FORM>
</BODY>
</HTML>
