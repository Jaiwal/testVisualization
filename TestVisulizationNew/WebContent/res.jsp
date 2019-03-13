<%@page import="db.DB"%>
<HTML>
<HEAD>
<LINK href="styles.css" type="text/css" rel="stylesheet">
<TITLE></TITLE>
<script>
function window_onload() {
	document.form1.submit();

}
</script>
</HEAD>
<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<% %>


<BODY bgcolor="#AAAAAA" LANGUAGE=javascript onload="return window_onload()">
<%
 
String email=(String)session.getAttribute("user11");
String subj=(String)session.getAttribute("subjj");
System.out.println("aaa");
int qno1=Integer.parseInt(request.getParameter("qn1"));
//System.out.println (email+"--"+qno1);
System.out.println("cccccccc:"+qno1);
int qno2=qno1+1;
 String an=request.getParameter("ans");
 //if(an.equals(null))
	//	 an="wrong";
// int a = Integer.parseInt(an);
 System.out.println("ans:"+an);
        int Status=0;
        String s="";
	ResultSet rs1=null;
	Statement stmt=null;
        String nop = request.getParameter("nop");
        String ttaken = request.getParameter("ttaken");
        if(qno1!=1)
        {
        	System.out.println("if");
        	s = session.getAttribute("tt").toString();
        }
        else
        {
        	System.out.println("else");
        	s="0";
        }
        int x = Integer.parseInt(s)+Integer.parseInt(ttaken);
        System.out.println("x");
        String xx = String.valueOf(x);
        session.setAttribute("tt", xx);
	 

try
{ 
	//Connection con=DB.getCon();
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","test","test");
	Statement ps= con.createStatement();
	System.out.println("connect");
	int c=1;
	if(qno1==1)
	{
		ResultSet rs3=ps.executeQuery("select max(count) from result where EMAILID='"+email+"' ");
		if(rs3.next())
		{
			  c = rs3.getInt(1);	
		}
		if(c!=0)
			c = c+1;
		else 
			c = 1;
		session.setAttribute("count", String.valueOf(c));
	}
	int count  = Integer.parseInt(session.getAttribute("count").toString());
	ResultSet rs=ps.executeQuery("select * from questions where subject = '"+subj+"' and qno = "+qno1+"");
	System.out.println(rs);
	while(rs.next())
	{
		System.out.println("while");
		String question=rs.getString("question");
		String answer=rs.getString("ans");
        int level1=rs.getInt("levell");

		if(answer.equals(an)) 	 
			Status=1;
		else
			Status=0;
		//System.out.println("status:"+Status+"nop"+Integer.parseInt(request.getParameter("nop"))+"time"+request.getParameter("ttaken"));
            
           //System.out.println(qno1+"--------"+time); 
           System.out.println("hhhhhhhh");
            String Query1 = "insert into result values('"+email+"',"+qno1+",'"+subj+"','"+question+"','"+an+"','"+answer+"',"+Status+","+level1+",'"+ttaken+"','"+nop+"',"+count+")";
			System.out.println(Query1);
			int result = ps.executeUpdate(Query1);
			System.out.println (result);
			%>
			<form action="test.jsp" id=form1 name=form1 >
			<input type=hidden name=exam value="<%=subj%>">
			<input type=hidden name=qn value="<%=qno2%>">
			<input type=hidden name=eid value="<%=email%>">
			</form>
			<%
			
		 }
	
	con.close();
}

catch(Exception e)


{
System.out.println(e);
}

%>
<body>
<html>
