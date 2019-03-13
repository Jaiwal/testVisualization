<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<%String user=(String)session.getAttribute("user");%>
<HEAD>
	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
</head>
<body bgcolor="#AAAAAA" class="SC">

<center>

<BR><BR><br>


<div style="float:left">
<img src="images/img/computfger.jpg" width="400" height="294" />
</div>
<div style="float:left;width:100px">
</div>

<div style="float:left">



<BR><BR>
<FORM NAME="LOGIN" ACTION="ChangePassword.jsp">


<TABLE Border=0 align=center style="font-size: 12px;color:#333;font-family: arial;">
<TR class=row_title ALIGN="center">
	   <TH COLSPAN="2"> <U><B>Change Password</B></U></TH>
</TR>

<TR class=row_even>
	<TD>EmailID</TD>
	<TD><input TYPE=text name=user size="20" value="<%=user%>" readonly></TD>
</TR>
<TR class=row_odd>
	<TD>Old Password</TD>
	<TD><input TYPE=password name=password size="8"  maxlength="8"></TD>
</TR>
<TR class=row_even>
	<TD>New Password </TD>
	<TD><input TYPE=password name=newPassword size="8"  maxlength="8"></TD>
</TR>
<TR class=row_odd>
	<TD><INPUT TYPE=submit name=submit value="Submit">
</TD>
	<TD><INPUT TYPE=reset name=resett value="Reset" >
</TD>
</TR>
</TABLE>
<br><br>
</FORM>
</div>

</BODY>
</HTML>



