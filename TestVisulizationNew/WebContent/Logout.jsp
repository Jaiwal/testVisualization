<!--
	File : Logout.jsp


-->
<html>
<%@ page language="java" %>
<%@ page session="true" %>
<%@page import="java.sql.*,java.io.*,java.util.Random"%>
<%
	session.removeAttribute("user");
	session.removeAttribute("auth");
	session.invalidate();
	System.out.println("After Lout-->");

%>
<Head>
<LINK href="styles.css" type="text/css" rel="stylesheet">
<body bgcolor="#AAAAAA">
<script>
	alert("Logged out successfully");

</script>
<br><br>
<P align=center><FONT SIZE="5" COLOR="#AA2504" face='monotype corsiva'>
Thanks for choosing our Data Visuvalization</Font></P>
<P align=center><a href="Index.jsp">Click Here</a> to Login again</P>
</body>
</html>