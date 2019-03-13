<%@page import="db.DB"%>
<HTML>
<HEAD>
	<LINK href="styles.css" type="text/css" rel="stylesheet">

<TITLE></TITLE>
</HEAD>
<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<body bgcolor="#AAAAAA" class='SC'>
<%
try{
	String subject=request.getParameter("exam");
%>
<P align=center><U><B>Modify Questions in subject '<%=subject%>'</B></U></P>
<Table border=1 width="600">
<tr>
<td><b>subject</b></td>
<td><b>questionno</b></td>
<td><b>question</b></td>
<td><b>answer1</b></td>
<td><b>answer2</b></td>
<td><b>answer3</b></td>
<td><b>answer4</b></td>
<td><b>answer</b></td>
<td><b>level</b></td>
<td><b>modify?</b></td>
</tr>
<%
Connection con=DB.getCon();


	Statement ps= con.createStatement();
	ResultSet rs=ps.executeQuery("select * from questions where subject='"+subject+"'order by levell,qno");
	while(rs.next()){
		int qno=rs.getInt("qno");
		String ques=rs.getString("question");
		String an1=rs.getString("ans1");
		String an2=rs.getString("ans2");
		String an3=rs.getString("ans3");
		String an4=rs.getString("ans4");
		String an=rs.getString("ans");
		String level=rs.getString("levell");
		%>
		<tr>
		<td><%=subject%></td>
		<td><%=qno%></td>
		<td><%=ques%></td>
		<td><%=an1%></td>
		<td><%=an2%></td>
		<td><%=an3%></td>
		<td><%=an4%></td>
		<td><%=an%></td>
		<td><%=level%></td>
		<td><a href='modproc.jsp?qno=<%=qno%>&&subject=<%=subject%>&&level=<%=level%>'>modify</a></td>
		</tr>
		<%
	}/* of while*/
ps.close();
	con.close();
}
catch(Exception e)


{
	e.printStackTrace();
out.println("Could not load database driver");
}

%>
</table>
<P>&nbsp;</P>
<a href ="ModifyQuestions0.jsp">go to choose subject</a>
</BODY>
</HTML>
