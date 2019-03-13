<%@page import="db.DB"%>
<html>
<head>
	<LINK href="styles.css" type="text/css" rel="stylesheet">

</head>
<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<body bgcolor="#AAAAAA" class='SC'>
<BR><BR><BR><BR>
<%
try{
	String subj=request.getParameter("sub");
	int queno=Integer.parseInt(request.getParameter("qno"));
	//String code=request.getParameter("code");
	String questio=request.getParameter("quest");
	String answera=request.getParameter("ansa");
	String answerb=request.getParameter("ansb");
	String answerc=request.getParameter("ansc");
	String answerd=request.getParameter("ansd");
	String answer=request.getParameter("ans");
	String level=request.getParameter("Level");

	Connection con=DB.getCon();
	Statement stmt=con.createStatement();
	int rowsAffected=stmt.executeUpdate("insert into questions(subject,qno,question,ans1,ans2,ans3,ans4,ans,levell) values ('" +subj+ "'," + queno + ",'" + questio + "','" + answera + "','" + answerb + "','" + answerc + "','" + answerd + "','" + answer +"',"+level+")");
	if(rowsAffected==1){
		%>
		<P align=center><B>Question added successfully</B></P><BR>
		<P align=center>
		<FORM action="add.jsp" id=form1 name=form1>
		<input type=hidden name=exam value=<%=subj%>>
		<INPUT type="submit" value="doyou want to continue" id=submit1 name=submit1>
		</FORM>
		<FORM action="exam.jsp" method=post id=form2 name=form2>
		<INPUT type="submit" value="change the subject" id=submit1 name=submit1>
		</P>
		<%
	}
	else {
		response.sendRedirect("add.jsp");
	}
	stmt.close();
	con.close();
}
catch(SQLException e){
	e.printStackTrace();
out.println("General exception :"+e);
}
%>
</body>
</html>