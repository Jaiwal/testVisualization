<%@page import="db.DB"%>
<html>
<head>
<title>Questions</title>
<SCRIPT ID=clientEventHandlersJS LANGUAGE=javascript>
var nop=0;
var ttaken=0;

function check()
{
	var a="";
	if(document.form1.ans.value=="")
		{
		document.form1.ans.value=="0";
		a="0";
		}
	return a;
}
        function selectAnswer()
        {
            nop++;
           // alert(parseInt(nop));
            document.form1.nop.value=nop;
        }
        function getTime()
        { 
        	var a=check();
        	 
        	if(a!="")
        		{
            ttaken=50-time1;
            alert(parseInt(ttaken));
            document.form1.ttaken.value=ttaken;
        		}
        	 
        }
var time1;
	time1=50;
	function DisplayTime()
	{
	if (time1==0 )
	{
		document.form1.submit();
		return true;
	}
	time1=time1-1;
	if (time1 <=5)
	{
		document.form1.textfield.value = time1 + " Seconds Only" ;
	}
	window.status="Time Left: " + time1;
	window.setTimeout("DisplayTime()",1000);
	return true;
	}
	DisplayTime();

//-->
</SCRIPT>
</head><%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<%
try{
	String email=request.getParameter("mail");
	String exam=request.getParameter("sub");
				session.setAttribute("sub",exam);

	int  qn= Integer.parseInt(request.getParameter("qno"));
	if(qn>=11) {
	response.sendRedirect("ViewResults.jsp");
	}

//Connection con = com.TestCenter.ConnectionPool.getConnection();


Connection con=DB.getCon();


	Statement ps= con.createStatement();
	System.out.println("====="+exam+"  "+qn);
	//int level = new com.TestCenter.MyFunctions().getLevel(email,exam,"result");
	//System.out.println ("level-------------"+level);
	ResultSet rs=ps.executeQuery("select * from questions where subject='"+exam+"' and qno="+qn+"");
	if(rs==null){
		response.sendRedirect("ViewResults.jsp");
	}
	if(rs.next()){

		//String code=rs.getString("code");
		String que=rs.getString("question");
		String answer1=rs.getString("ans1");
		String answer2=rs.getString("ans2");
		String answer3=rs.getString("ans3");
		String answer4=rs.getString("ans4");
		%>
<body  bgcolor="#AAAAAA" >
<form action="res.jsp" id=form1 name=form1 >
<input type="text" name="textfield" style="BORDER-STYLE:none;background-color:#00AE00" color = "red">
<input type	=hidden name=eid value="<%=email%>">
<input type=hidden name=sub value="<%=exam%>">
<input type=hidden name=nop>
<input type=hidden name=ttaken>

  <table width="54%" border="0" cellpadding="0" cellspacing="0" bordercolor="#66cc99" align="center" id=TABLE1>
    <tr>
      <td colspan="2">
        <div align="center"><b><font size="3" face="Verdana, Arial, Helvetica, sans-serif"><%=exam%>Test</font></b></div>
      </td>
    </tr>
   <tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr>
       <tr>
            <td colspan="2" ><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><input type=hidden name=qn1 value="<%=qn%>"> <%=qn%><%=que%>
             </font>
          </tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr>
   <tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr>
          <tr>
            <td colspan="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              a) <input type=radio name=ans onchange="selectAnswer()"  value="<%=answer1%>"></font><%=answer1%>
            </tr>
          <tr>
            <td  colspan="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              b) <input type=radio name=ans  onchange="selectAnswer()" value="<%=answer2%>"></font><%=answer2%>
            </tr>
          <tr>
            <td colspan="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              c)  <input type=radio name=ans onchange="selectAnswer()" value="<%=answer3%>"></font><%=answer3%>
          </tr>

          <tr>
            <td colspan="2" ><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              d)  <input type=radio name=ans onchange="selectAnswer()" value="<%=answer4%>" ></font><%=answer4%>
         </tr>
<tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr>
<tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr><tr><td colspan="2" width="54%"></td>
</tr>
          <tr>
            <td width="19%"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              <input id=submit1 name=submit1 type="submit" value="Submit" onclick="getTime()" style="LEFT: 92px; TOP: 0px">
              </font></td>
            <td>
              <div align="left"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
                <input id=reset1 name=reset1 type="reset" value="Reset">
                </font></div>
              <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> </font><font face="Verdana, Arial, Helvetica, sans-serif" size="2"></font></td>
          </tr>
         </table>
      </td>
    </tr>
  </table>
</form>

<%
	}else{
		response.sendRedirect("ViewResults.jsp");
	}

ps.close();
con.close();
}
catch(Exception e)


{
	e.printStackTrace();
System.out.println("Could not load database driver");
}

%>
</body>
</html>

