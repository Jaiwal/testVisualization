<%@page import="db.DB"%>
<HTML>
<HEAD>
	<LINK href="styles.css" type="text/css" rel="stylesheet">

<TITLE>All Questions Display</TITLE>
</HEAD>
<a href="ViewQuestions0.jsp">Do you want to change the subject</a>
<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<body bgcolor="#AAAAAA" class='SC'>
<%
try{
	String sub=request.getParameter("exam");
%>
<P align=center><U><B> Questions available for subject '<%=sub%>'</B></U></P>

<Table border=1 align=center>
<tr>
<td><b>questionno</b></td>
<td><b>question</b></td>
<td><b>answer1</b></td>
<td><b>answer2</b></td>
<td><b>answer3</b></td>
<td><b>answer4</b></td>
<td><b>answer</b></td>
<td><b>level</b></td>
</tr>
<%
Connection con=DB.getCon();
	Statement ps= con.createStatement();

	ResultSet rs=ps.executeQuery("select * from questions where subject='"+sub+"'");
	while(rs.next()){
		int qno1=rs.getInt("qno");
		//String code=rs.getString("code");
		String que=rs.getString("question");
		String answer1=rs.getString("ans1");
		String answer2=rs.getString("ans2");
		String answer3=rs.getString("ans3");
		String answer4=rs.getString("ans4");
		String answer=rs.getString("ans");
		String level =rs.getString("levell");
		%>
			<tr>
			<td><%=qno1%></td>
			<td><%=que%></td>
			<td><%=answer1%></td>
			<td><%=answer2%></td>
			<td><%=answer3%></td>
			<td><%=answer4%></td>
			<td><%=answer%></td>
			<td><%=level%></td>
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
</BODY>
</HTML>
