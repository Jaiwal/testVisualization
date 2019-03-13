<%@page import="db.DB"%>
<html>
<head>
<title>
Registration Form
</title>
</head>
<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<body  bgcolor="#AAAAAA">
<%
String name =request.getParameter("fname");
String pass =request.getParameter("pass");
String email=request.getParameter("eid");

String contact=request.getParameter("conno");
String gen=request.getParameter("gender");
String qual=request.getParameter("qua");
String skill=request.getParameter("software");
String exper=request.getParameter("exp");
String address=request.getParameter("address");
String auth="1";

try{

	Connection con=DB.getCon();
	
	Statement stmt=con.createStatement();
	int rowsAffected=stmt.executeUpdate("insert into register(firstname,lastname,email,phone,gender,qual,skills,exp,address) values ('"+name+"','"+pass+"','" +email+"','"+contact+"','"+gen+"','"+qual+"','"+skill+"','"+exper+"','"+address+"')");
	System.out.println("check!!");
	if(rowsAffected ==1){
					session.setAttribute("user",email);

		Statement stmt1=con.createStatement();
	int rowsAffected1=stmt1.executeUpdate("insert into login(user1,password,auth) values ('"+email+"','"+pass+"','" +auth+"')");
	
		%>
		out.println("<h1>Registraion Sucessfully!!</h1>");
		<jsp:forward page="Index.jsp">
				<jsp:param name="user" value="<%=email%>"/>
				</jsp:forward>
		<%
	}
	else{
		response.sendRedirect("endexam.html");
	}
	stmt.close();
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