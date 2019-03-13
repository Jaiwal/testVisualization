<HTML>

<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>

<%@ page session="true" %>
<%String user=(String)session.getAttribute("user");
session.setAttribute("user1",user);

%>

<head>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
	<script LANGUAGE="Javascript" SRC="Images/validate.js"> 
	<script LANGUAGE="Javascript" SRC="Images/AjaxCall.js">
	 

</SCRIPT>
 

 
</head>
<body style="background-color: #FFF">
		<br><br><br><br>
<Form name =form1>
 
	<fieldset style="padding: 3; width=15;height=200">
 <legend><FONT COLOR="#800040" Face='verdana' size='2'><B>User Home</B></Legend>

	<TABLE align=right>
		<tr><BR><TD><A HREF="exams.jsp" target="ResFrame" class="sidemenuhyper">Exam</A></TD>
                </tr><td></td><td></td>
        <tr><BR><TD><A HREF="ViewResults.jsp" target="ResFrame" class="sidemenuhyper">ViewResults</A></TD>
                </tr><td></td><td></td>
		<tr><TD><A HREF="ViewProfile.jsp" target="ResFrame" class="sidemenuhyper">ViewProfile</A></TD>
        </tr><td></td><td></td>
		<tr><TD><A HREF="EditProfile.jsp" target="ResFrame" class="sidemenuhyper">EditProfile</A></TD>
        </tr><td></td><td></td>

		<!--<tr><TD><A HREF="ViewMyStatus.jsp" target="ResFrame" class="sidemenuhyper">ViewStatus</A></TD>
        </tr><td></td><td></td>-->
		<tr><TD><A HREF="ChangePassword1.jsp" target="ResFrame" class="sidemenuhyper">ChangePassword</A></TD>
		</tr><td></td><td></td>
		<!--<tr><TD><A HREF="TestDetailsReport.html" target="ResFrame" class="sidemenuhyper">Test History</A></TD>
		</tr><td></td><td></td>-->
		<tr><TD><A HREF="Logout.jsp" target="main" class="sidemenuhyper">LogOut</A></TD>
                </tr><td></td><td></td>

	</fieldSet>
	</TABLE>


</Form>
</BODY>
</HTML>
