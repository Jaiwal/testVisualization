<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE>subjects</TITLE>
	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<%@ page errorPage="errorpge.jsp" import="java.sql.*,db.DB"%>
<%@ page language="java"%>
<%String email=request.getParameter("user");

%>
<%
if(request.getParameter("msg")!=null)
    {
%>
<h1 align="center"><%= request.getParameter("msg")%></h1>
<%}%>

<BODY  bgcolor="#AAAAAA" style="color:#333;font-size: 12px;font-family: arial;">


<%
	Connection con=DB.getCon();
	String user=(String)session.getAttribute("user");
	String password=(String)session.getAttribute("password");
	
	Statement ps= con.createStatement();
	ResultSet rs=ps.executeQuery("select max(nop) from result where emailid= '"+user+"'");
	rs.next();
	
	String attempt=rs.getString(1);
	int x=1;
	if(attempt!=null)
	{
		x=Integer.parseInt(attempt);
		x++;
	}
	session.setAttribute("attempt", new Integer(x));
	System.out.println("user:   "+user+";     max  attempt--------- "+rs.getString(1));
%>
<FORM action="test.jsp" id=form1 name=form1>

<span style="font-size: 14px"><B>Welcome</b>, <%= session.getAttribute("user1") %></span>

<p><strong>Select your Expertise fields for which you would like to give
          the exam</strong><strong>Front End/Data Base/
Programming Languages<br>
          </strong>1.&nbsp;
          <input id=radio1 name=exam type=radio value="VB" checked style="padding-top: 5px">
          Visual basic 6.0<br>
          2.&nbsp;
          <input id=radio2 name=exam type=radio value="JAVA" style="padding-top: 5px">
          Java<br>
          3.&nbsp;
          <input id=radio3 name=exam type=radio value="ASP" style="padding-top: 5px">
          ASP<br>
          4.&nbsp;
          <input id=radio2 name=exam type=radio value="C" style="padding-top: 5px">
          C<br>
          5.&nbsp;
          <input id=radio3 name=exam type=radio value="C++" style="padding-top: 5px">
          C++<br>
          6.&nbsp;
          <input id=radio2 name=exam type=radio value="ORACLE" style="padding-top: 5px">
          ORACLE<br>
          7.&nbsp;
          <input id=radio3 name=exam type=radio value="VC++" style="padding-top: 5px">
          VC++<br>
          8.&nbsp;
          <input id=radio2 name=exam type=radio value="MS-SQL" style="padding-top: 5px">
          MS-SQL<br>
<input type=hidden name=eid value="<%=email%>">
<input type=hidden name="qn" value="1">
<INPUT type="submit" value="Exam Selected" id=submit1 name=submit1>
</FORM>
</BODY>
</HTML>
