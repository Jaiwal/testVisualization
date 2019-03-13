<%@page import="db.DB"%>
<html>
<head>
	<LINK href="styles.css" type="text/css" rel="stylesheet">

<title>
Processing of Q& A
</title>
</head>
<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<body bgcolor="#AAAAAA" class='SC'>
<%
String subj=request.getParameter("subject");
int queno=Integer.parseInt(request.getParameter("qno"));
//String code=request.getParameter("code");
String questio=request.getParameter("quest");
String answera=request.getParameter("ansa");
String answerb=request.getParameter("ansb");
String answerc=request.getParameter("ansc");
String answerd=request.getParameter("ansd");
String answer=request.getParameter("ans");
String level = request.getParameter("level");
try{

	Connection con=DB.getCon();
	
	
	Statement stmt=con.createStatement();
	int rowsAffected=stmt.executeUpdate("update questions  set question='"+questio+"',ans1='"+answera+"',ans2='"+answerb+"',ans3='"+answerc+"',ans4='"+answerd+"',ans='"+answer+"',levell="+level+" where qno="+queno+" and subject='"+subj+"'");
	System.out.println(rowsAffected+";;;;");

	if(rowsAffected==1){
		%>
		<BR><BR><BR><BR><BR><BR>

		<P align=center> <B>Modified details updated successfully </B>
		<BR><BR>
		<FORM action="exam.jsp" id=form2 name=form2>
		<INPUT type="submit" value="change the subject" id=submit1 name=submit1>
		</P>
		<%
	}
	else {
		response.sendRedirect("modproc.jsp");
	}
	con.close();
}
catch(Exception e)


{
	e.printStackTrace();
out.println("Could not load database driver");
}

%>
</body>
</html>