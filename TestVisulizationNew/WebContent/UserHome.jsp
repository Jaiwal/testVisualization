<HTML>

<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>

<%@ page session="true" %>
<%String user=(String)session.getAttribute("user");%>

<head>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
	<script LANGUAGE="Javascript" SRC="Images/AjaxCall.js"></script>
	
<head>
<body style="background-color: #FFF">
		<br><br><br>
<Form name =UserProfile>
	<fieldset style="padding:3;width=15;height=200">
 <legend><FONT COLOR="#800040" Face='verdana' size='2'><B>Admin Home</B></FONT></Legend>

	<TABLE align=right>
		<tr><BR><TD><A HREF="AddQuestions0.jsp" target="ResFrame" class="sidemenuhyper">Add Questions</A></TD>
                </tr><td></td><td></td>
		<tr><TD><A HREF="ViewQuestions0.jsp" target="ResFrame" class="sidemenuhyper">View Questions</A></TD>
                </tr><td></td><td></td>

		<tr><TD><A HREF="ModifyQuestions0.jsp" target="ResFrame" class="sidemenuhyper">Modify Questions</A></TD>
                </tr><td></td><td></td>
		<tr><TD><A HREF="DeleteQuestions0.jsp" target="ResFrame" class="sidemenuhyper">Delete Questions</A></TD>
                </tr><td></td><td></td>

	<!--	<tr><TD><A HREF="AddUser.jsp" target="ResFrame" class="sidemenuhyper">Add Admin User</A></TD>
		</tr><td></td><td></td>	---->
		<tr><TD><A HREF="ViewUsers.jsp" target="ResFrame" class="sidemenuhyper">View Users</A></TD>
		</tr><td></td><td></td>
		<tr><TD><A HREF="DelUser.jsp" target="ResFrame" class="sidemenuhyper">Delete User</A></TD>
		</tr><td></td><td></td>
		<tr><TD><A HREF="selectuser.jsp" target="ResFrame" class="sidemenuhyper">User Test Through Visualization</A></TD>
		</tr><td></td><td></td>
		<!--<tr><TD><A HREF="UserStatus.jsp" target="ResFrame" class="sidemenuhyper">User Status</A></TD>
		</tr><td></td><td></td>--->
		<tr><TD><A HREF="ChangePassword1.jsp" target="ResFrame" class="sidemenuhyper">ChangePassword</A></TD>
		<!-- <tr><TD><A HREF="Search.jsp" target="ResFrame" class="sidemenuhyper">Search</A></TD>
		</tr><td></td><td></td> -->
		</tr><td></td><td></td>
		<tr><TD><A HREF="Logout.jsp" target="main" class="sidemenuhyper">LogOut</A></TD>
                </tr><td></td><td></td>

	</TABLE>

	</fieldSet>

</Form>
</BODY>
</HTML>


