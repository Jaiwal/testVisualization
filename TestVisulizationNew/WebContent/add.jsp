<%@page import="db.DB"%>
<html>
<head>
	<LINK href="styles.css" type="text/css" rel="stylesheet">

<title>Add Questions</title>
<SCRIPT ID=clientEventHandlersJS LANGUAGE=javascript>
<!--
function allempty()
{
        if ( document.form1.b.value==""){
		alert("all fields  manditory");
        return false;

        }
        else if(document.form1.quest.value=="")
        {
		alert("Question is compulsory");
        document.form1.quest.focus();
        }
}
function window_onload() {
document.form1.submit1.disabled=true;
//document.form1.qno.focus();
}

function qno_onblur() {
if(document.form1.qno.value==""){
		alert("Question Number is compulsory");
		document.form1.qno.focus();
		return false;
	}
	else if(!isNaN(document.form1.qno.value)==false){
		alert("Question Number in numeric");
		document.form1.qno.value="";
		document.form1.qno.focus();
		return false;
	}
}
function Level_onblur() {
if(document.form1.Level.value==""){
		alert("Level Number is mandatory");
		document.form1.Level.focus();
		return false;
	}
else if(!isNaN(document.form1.Level.value)==false){
		alert("Level Number in numeric");
		document.form1.Level.value="";
		document.form1.Level.focus();
		return false;
	}
}
function b_onfocus() {
if(document.form1.a.value==""){
		alert("Choice a is compulsory");
		document.form1.a.value="";
		document.form1.a.focus();
		return false;
	}
}

function c_onfocus() {
if(document.form1.b.value==""){
		alert("Choice b is compulsory");
		document.form1.b.focus();
		return false;
	}
}

function d_onfocus() {
if(document.form1.c.value==""){
		alert("Choice c is compulsory");
		document.form1.c.focus();
		return false;
	}

}

function a_onfocus() {
if(document.form1.quest.value==""){
		alert("Question is compulsory");
		document.form1.quest.focus();
		return false;
	}
}
function ans_onfocus() {
if(document.form1.d.value==""){
		alert("Choice d is compulsory");
		document.form1.d.focus();
		return false;
	}
	else
	{
	document.form1.submit1.disabled=false;
		}
}
//-->
</SCRIPT>
</head>
<H2 align=center>Add Questions and Answers</H2>
<BR>
<P align=center><a href="AddQuestions0.jsp"><U>Do you want to change the subject</U></a></P>
<BR>
<%@ page errorPage="errorpge.jsp" %>
<%@ page language="java" import="java.sql.*" %>
<% String sub=request.getParameter("exam"); %>
<body bgcolor="#AAAAAA" LANGUAGE=javascript onsubmit="return window_onload()" class='SC'>
  <%!int qn = 0; %>
  <%
  try
  {
   	
  Connection cn=DB.getCon();
  	
  
    Statement st=cn.createStatement();
   	//String str="select qno_seq.nextval from dual;";
    String str="select max(qno) from questions where subject='"+sub+"'";
    ResultSet rs=st.executeQuery(str);
  	if(rs.next())
    {
     	qn = rs.getInt(1) +1;
 	 }
  	else
  		 qn = 1;
  }
  catch(Exception e)
  {
	  System.out.println(e);
  }
    %>
   
<form  action="addquest.jsp" id=form1 name=form1 >

        <table align=center>
          <tr>
            <td colspan="2" align=center><U><B>Add Question</B></U></td>
          </tr>
          <tr>
            <th><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              Subject:</font></td>
            <td width="43%"><%=sub%> <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              <input name=sub type=hidden id=sub value=<%=sub%> >
              </font></td>
          </tr>
          <tr>
            <th><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              Question No:</font></td>
            <td width="43%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
           <input  name=qno id=qno value=<%=qn%> LANGUAGE=javascript onChange="return qno_onblur()" >
              </font></td>
          </tr>
           <tr>
			 <tr>
            <th><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#FF3333"></font><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              Level:</font></td>
            <td width="28%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              <input  name=Level id=Level LANGUAGE=javascript value="1" onChange="return Level_onblur">
              </font></td>
             </tr>
             <tr>
            <th><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              Question:</font></td>
            <td width="43%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              <input  name=quest id=quest  >
              </font></td>
          </tr><tr>
            <th><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              Choice a:</font></td>
            <td width="43%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              <input  name=ansa id=a    LANGUAGE=javascript onChange="return a_onfocus()">
              </font></td>
          </tr><tr>
            <th><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              Choice b:</font></td>
            <td width="43%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              <input  name=ansb id=b LANGUAGE=javascript onChange="return b_onfocus()">
              </font></td>
          </tr><tr>
            <th><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              Choice c:</font></td>
            <td width="43%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              <input  name=ansc id=c LANGUAGE=javascript   onchange="return c_onfocus()">
              </font></td>
          </tr><tr>
            <th><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              Choice d:</font></td>
            <td width="43%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              <input  name=ansd id=d LANGUAGE=javascript  onchange="return d_onfocus()">
              </font></td>
          </tr>
		  <tr>
            <th><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              Answer:</font></td>
            <td width="43%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              <input  name=ans id=ans  LANGUAGE=javascript onChange="return ans_onfocus()">
              </font></td>
          </tr>
          <tr>
            <th><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
              <input id=submit1 name=submit1 type="submit" value="Add Question"onClick="return allempty();" style="LEFT: 92px; TOP: 0px">
              </font></td>
            <td>
                <input id=reset1 name=reset1 type="reset" value="Reset">
			</td>
          </tr>
          <tr>
            <th>&nbsp;</td>
            <td width="43%">&nbsp;</td>
          </tr>

        </table>

</form>
</body>
</html>

