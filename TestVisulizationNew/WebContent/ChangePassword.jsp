<%@page import="db.DB"%>
<HTML>

<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random"%>
<head>
<LINK href="styles.css" type="text/css" rel="stylesheet">
<SCRIPT LANGUAGE="JavaScript">
<!--
history.go(+1);

//-->
</SCRIPT>
</head>

<body bgcolor="#AAAAAA" class="SC">
<BR><BR><BR>
<center>

<!--Declaration of varaibles-->

<%! String errormsg ;%>
<%! String disluserid ;%>
<%! String dislpwd ;%>
<%! String dislnewpwd ;%>


<%
   /*Retreiving user id and password*/

    disluserid = request.getParameter("user");
    if(disluserid == null)
    disluserid = "";
    dislpwd = request.getParameter("password");
    if(dislpwd == null)
    dislpwd = "";
	dislnewpwd = request.getParameter("newPassword");
	if(dislnewpwd == null)
	dislnewpwd="";
	//System.out.println(disluserid+dislnewpwd+dislpwd);

%>

<%

/*Declaration of variables*/

Connection con=null;
Statement stmt=null;
ResultSet rs=null;

String user,Password;

try
{

	/*Getting the connection variable from session*/
 con=DB.getCon();
	stmt =  con.createStatement();

	String Query = "SELECT * from Login where user1 = \'"+disluserid+
		"\' and password =\'"+dislpwd+"\'";
	//System.out.println(Query);
	rs = stmt.executeQuery(Query);

}
catch(Exception e)
{
	e.printStackTrace();
	System.out.println("Exception"+e);
}
/* If user provides valid username & password then update the new password to database*/
if(rs!=null)
{
String UpdateQuery =
"Update Login set Password = \'"+dislnewpwd+"\' where user1= \'"+disluserid+"\' and password=\'"+dislpwd+"\'";
//System.out.println(UpdateQuery);
	int rowsAffected=stmt.executeUpdate(UpdateQuery);
	//System.out.println("Rows Affected = " + rowsAffected);
if(rowsAffected==1)
	{%>
	<br><br><br>
		<P align="center" ><B> <FONT face="verdana">Password Updated Successfully</FONT></B></P>
	<BR>
    <center>
		<A href="Welcome.html"> Home </A>
	</center>

	<%}
/* If user provides invalid password or username*/
else{%>
	<script>
		for(i=1;i<=6;i++) document.write("<br>");
	</script>
		<P align="center" ><FONT face="verdana"><B>UserName/Password Invalid Please Try again </B></FONT></P>
	<BR>
	<center>
		<A href="ChangePassword1.jsp"> Back </A>
	</center>
<%
}
}
%>


<FONT size="2" color="blue" FACE="Century Gothic">

</BODY>
</HTML>




