<HTML>
<HEAD>
	<LINK href="styles.css" type="text/css" rel="stylesheet">

<TITLE>Exams</TITLE>
</HEAD>
<%@ page errorPage="errorpge.jsp" %>
<BODY bgcolor="#AAAAAA" class="SC">
<BR><BR><BR><BR>
<div style="float:left">
<img src="images/img/computer-students.jpg" width="400" height="294" />
</div>
<div style="float:left;width:100px">
</div>
<div style="float:left">
<P align=center>
<U><B>Choose Subject to add Questions</B></U><BR><BR>
<FORM action="add.jsp" id=form1 name=form1 method="get">

<SELECT size=1 id=select1 name=exam style="HEIGHT: 38px; WIDTH: 103px">
<OPTION selected
  value=ASP>ASP</OPTION><OPTION
  value=JAVA>JAVA</OPTION><OPTION value=C>C</OPTION><OPTION value=C++>C++</OPTION><OPTION
  value=VC++>VC++</OPTION><OPTION value=VB>VB</OPTION><OPTION
  value=ORACLE>ORACLE</OPTION><OPTION value=MS-SQL>MS-SQL</OPTION>
</SELECT><INPUT type="submit" value="Submit" id=submit1 name=submit1>
</FORM>
</P>
<P>&nbsp;</P>
</div>

</BODY>
</HTML>
