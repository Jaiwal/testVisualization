<%@page import="db.DB"%>
<HTML>
<HEAD>
	<LINK href="styles.css" type="text/css" rel="stylesheet">

<TITLE></TITLE>
</HEAD>
<body bgcolor="#AAAAAA" class='SC'>
<BR><BR><BR>
<P align=center> <U>Modify Question</U> </P>
<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<%
try{
	String sub=request.getParameter("subject");
	int qno=Integer.parseInt(request.getParameter("qno"));
	String level=request.getParameter("level");
//Connection con = com.TestCenter.ConnectionPool.getConnection();

Connection con=DB.getCon();


	Statement ps= con.createStatement();
	ResultSet rs=ps.executeQuery("select * from questions where qno="+qno+" and subject='"+sub+"' and levell="+level);
	String optionSelected="";
	while(rs.next()){
		//String code=rs.getString("code");
		String question=rs.getString("question");
		String questio=rs.getString("ans1");
		String questi=rs.getString("ans2");
		String quest=rs.getString("ans3");
		String ques=rs.getString("ans4");
		String que=rs.getString("ans");
		String level1 = rs.getString("levell");

		%>
		<FORM action="modifyproc1.jsp">
		<table align=center>
		<TR>
		<TD><B>Subject:</B></TD>
		<TD><%=sub%><INPUT name=subject type=hidden width="30" value=<%=sub%> ></TD></TR>
		<tr>    <TD><B>Question No:</B></TD>
		<TD><%=qno%><INPUT name=qno type=hidden width="30" value=<%=qno%> ></TD></TR>
		<TR>
		<TD><B>Question:</B></TD>
		<TD><INPUT name=quest type=text width="30" value=<%=question%>></TD></TR>
		<TR>
		<TD><B>Choice a</B></TD>
		<TD><INPUT name=ansa type=text width="30" value=<%=questio%>></TD></TR>
		<TR>
		<TD><B>Choice b:</B></TD>
		<TD><INPUT name=ansb type=text width="30" value=<%=questi%>></TD></TR>
		<TR>
		<TD><B>Choice c:</B></TD>
		<TD><INPUT name=ansc type=text width="30" value=<%=quest%>></TD></TR>
		<TR>
		<TD><B>Choice d:</B></TD>
		<TD><INPUT name=ansd type= text width="30" value=<%=ques%>></TD></TR>
		<TR>
		<TD><B>Answer:</B></TD>
		<TD><INPUT name=ans type= text width="30" value=<%=que%>></TD></TR>
		<tr>
		<TR>
		<TD><B>Level:</B></TD>
		<TD><INPUT name=level type= text width="30" value=<%=level%>></TD></TR>
		<tr>
		<td colspan=2>
		<input type="Submit" value="Modify">
		</td>
		</tr>
		<%
	}
ps.close();
	con.close();
}
catch(Exception e)


{
	e.printStackTrace();
out.println("Could not load database driver");
}

%>
</TABLE></FORM></P>
</BODY>
</HTML>
