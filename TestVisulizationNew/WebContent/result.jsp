<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import ="java.lang.*"%>
<%! 
String resultfiles[];
%>
<%

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con = DriverManager.getConnection("jdbc:odbc:PROFFESI-D79C2B","sndddp","truth");
		Statement st = con.createStatement();
	String user=(String)session.getAttribute("uname");
	String searchword=(String)application.getAttribute("text");
	
	

	%>



<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<meta name=ProgId content=Word.Document>
<meta name=Generator content="Microsoft Word 11">
<meta name=Originator content="Microsoft Word 11">
<link rel=File-List href="log.jsp_files/filelist.xml">
<link rel=Edit-Time-Data href="log.jsp_files/editdata.mso">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
<title>Truth Discovery</title>
<!--[if gte mso 9]><xml>
 <o:DocumentProperties>
  <o:Author>Spiro52</o:Author>
  <o:Template>Normal</o:Template>
  <o:LastAuthor>Spiro52</o:LastAuthor>
  <o:Revision>2</o:Revision>
  <o:TotalTime>1</o:TotalTime>
  <o:Created>2008-10-17T11:23:00Z</o:Created>
  <o:LastSaved>2008-10-17T11:23:00Z</o:LastSaved>
  <o:Pages>1</o:Pages>
  <o:Words>511</o:Words>
  <o:Characters>2918</o:Characters>
  <o:Company>Spiro Technologies</o:Company>
  <o:Lines>24</o:Lines>
  <o:Paragraphs>6</o:Paragraphs>
  <o:CharactersWithSpaces>3423</o:CharactersWithSpaces>
  <o:Version>11.5606</o:Version>
 </o:DocumentProperties>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:Zoom>80</w:Zoom>
  <w:FormsDesign/>
  <w:ValidateAgainstSchemas/>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>
 </w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState="false" LatentStyleCount="156">
 </w:LatentStyles>
</xml><![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:"Times New Roman";}
h1
	{mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	mso-outline-level:1;
	font-size:12.0pt;
	font-family:"Times New Roman";
	color:#009900;
	font-weight:bold;}
p
	{mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:Tahoma;
	mso-fareast-font-family:"Times New Roman";}
p.productcell, li.productcell, div.productcell
	{mso-style-name:productcell;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	font-size:7.5pt;
	font-family:Tahoma;
	mso-fareast-font-family:"Times New Roman";
	color:#666666;}
p.style10, li.style10, div.style10
	{mso-style-name:style10;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	font-size:8.5pt;
	font-family:Tahoma;
	mso-fareast-font-family:"Times New Roman";}
p.productlink, li.productlink, div.productlink
	{mso-style-name:productlink;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:Tahoma;
	mso-fareast-font-family:"Times New Roman";
	color:#009900;}
p.field90, li.field90, div.field90
	{mso-style-name:field90;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:Tahoma;
	mso-fareast-font-family:"Times New Roman";}
p.latestnews, li.latestnews, div.latestnews
	{mso-style-name:latestnews;
	margin-top:11.25pt;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:22.5pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:Tahoma;
	mso-fareast-font-family:"Times New Roman";}
span.productlink1
	{mso-style-name:productlink1;
	color:#009900;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.Section1
	{page:Section1;}
div.MsoNormal1 {mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:"Times New Roman";}
li.MsoNormal1 {mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:"Times New Roman";}
p.MsoNormal1 {mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:"Times New Roman";}
p.MsoNormal11 {mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:"Times New Roman";}
p.MsoNormal111 {mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:"Times New Roman";}
-->
</style>
<!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:"Table Normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-parent:"";
	mso-padding-alt:0in 5.4pt 0in 5.4pt;
	mso-para-margin:0in;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	font-family:"Times New Roman";
	mso-ansi-language:#0400;
	mso-fareast-language:#0400;
	mso-bidi-language:#0400;}
</style>
<![endif]-->
<script  type="text/javascript">
<!--

function newImage(arg) {
	if (document.images) {
		rslt = new Image();
		rslt.src = arg;
		return rslt;
	}
}
function forward( )
{
<% String text=request.getParameter("textfield");
String search1=request.getParameter("search");
request.setAttribute("text",text);
request.setAttribute("search",search1);%>
document.location="response.jsp";
}
function forward1( )
{
document.location="exactsearch.jsp";
}
function changeImages() {
	if (document.images && (preloadFlag == true)) {
		for (var i=0; i<changeImages.arguments.length; i+=2) {
			document[changeImages.arguments[i]].src = changeImages.arguments[i+1];
		}
	}
}

var preloadFlag = false;
function preloadImages() {
	if (document.images) {
		btn_home_over = newImage("images/btn_home-over.gif");
		btn_aboutus_over = newImage("images/btn_aboutus-over.gif");
		btn_contactus_over = newImage("images/btn_contactus-over.gif");
		btn_products_over = newImage("images/btn_products-over.gif");
		btn_services_over = newImage("images/btn_services-over.gif");
		preloadFlag = true;
	}
}

// -->
</script>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="1032"/>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1"/>
 </o:shapelayout></xml><![endif]-->
</head>

<body bgcolor="#EAEBED" lang=EN-US link=blue vlink=blue style='tab-interval:
.5in' leftmargin=0 topmargin=0 marginwidth=0 marginheight=0
onload="preloadImages();">

<div class=Section1>

<div align=center>
  <table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width=774 height="100%"
 style='width:581.25pt;mso-cellspacing:0in;mso-padding-alt:0in 0in 0in 0in'>
    <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:52.5pt'>
      <td rowspan=6 style='padding:0in 0in 0in 0in;height:52.5pt'><p class=MsoNormal111><span style='font-family:Tahoma'>
        <o:p></o:p>
      </span></p></td>
      <td colspan=3 style='background:white;padding:0in 0in 0in 0in;height:52.5pt'><table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width=675 style='width:506.25pt;mso-cellspacing:0in;mso-padding-alt:0in 0in 0in 0in' id="Table_06" height=70>
          <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;
    height:52.5pt'>
            <td style='padding:0in 0in 0in 0in;height:52.5pt'><p class=MsoNormal111><span style='font-family:Tahoma'> <img width=188
    height=75 id="_x0000_i1026" src="images/toplogo7.jpg">
                      <o:p></o:p>
            </span></p></td>
            <td style='padding:0in 0in 0in 0in;height:52.5pt'><p class=MsoNormal111><span style='font-family:Tahoma'> <img width=520
    height=70 id="_x0000_i1028" src="images/topp.jpg">
                      <o:p></o:p>
            </span></p></td>
          </tr>
      </table></td>
      <td width=56 rowspan=6 style='width:41.25pt;padding:0in 0in 0in 0in;
  height:52.5pt' background="images/pagebgright.gif"><p class=MsoNormal111>
    </tr>
    <tr style='mso-yfti-irow:1;height:24.75pt'>
      <td colspan=3 style='padding:0in 0in 0in 0in;height:24.75pt'><table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width=675
   style='width:506.25pt;mso-cellspacing:0in;mso-padding-alt:0in 0in 0in 0in'
   id="Table_05" height=33>
          <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes'>
            <td style='padding:0in 0in 0in 0in'><p class=MsoNormal111><span style='font-family:Tahoma'><img width=181
    height=33 id="_x0000_i1030" src="images/navtablebgleft.gif">
                      <o:p></o:p>
            </span></p></td>
            <td style='padding:0in 0in 0in 0in'><p class=MsoNormal111><span style='font-family:Tahoma'><span style='mso-field-code:
    " HYPERLINK \0022\0022 "'><span style='color:blue'><a href="Index.jsp"><img width=50 height=33
    id="_x0000_i1031" src="images/btn_home.gif" name="btn_home" border=0>
                            <o:p></o:p>
            </a></span></span></span></p></td>
            <td style='padding:0in 0in 0in 0in'><p class=MsoNormal111><span style='font-family:Tahoma'><span style='mso-field-code:
    " HYPERLINK \0022\0022 "'><span style='color:blue'><a href="AboutUs.jsp"><img width=67 height=33
    id="_x0000_i1032" src="images/btn_aboutus.gif" name="btn_aboutus" border=0>
                            <o:p></o:p>
            </a></span></span></span></p></td>
            <td style='padding:0in 0in 0in 0in'><p class=MsoNormal111><span style='font-family:Tahoma'><span style='mso-field-code:
    " HYPERLINK \0022\0022 "'><span style='color:blue'><a href="ContactUs.jsp"><img width=76 height=33
    id="_x0000_i1033" src="images/btn_contactus.gif" name="btn_contactus"
    border=0>
                            <o:p></o:p>
            </a></span></span></span></p></td>
            <td style='padding:0in 0in 0in 0in'><p class=MsoNormal111><span style='font-family:Tahoma'><span style='mso-field-code:
    " HYPERLINK \0022\0022 "'><span style='color:blue'><a href="Products.jsp"><img width=67 height=33
    id="_x0000_i1034" src="images/btn_products.gif" name="btn_products"
    border=0>
                            <o:p></o:p>
            </a></span></span></span></p></td>
            <td style='padding:0in 0in 0in 0in'><p class=MsoNormal111><span style='font-family:Tahoma'><span style='mso-field-code:
    " HYPERLINK \0022\0022 "'><span style='color:blue'><a href="Services.jsp"><img width=61 height=33
    id="_x0000_i1035" src="images/btn_services.gif" name="btn_services"
    border=0>
                            <o:p></o:p>
            </a></span></span></span></p></td>
            <td style='padding:0in 0in 0in 0in'><p class=MsoNormal111><span style='font-family:Tahoma'><img width=1 height=33
    id="_x0000_i1036" src="images/navtablespacer.gif">
                      <o:p></o:p>
            </span></p></td>
            <td style='padding:0in 0in 0in 0in'><p class=MsoNormal111><span style='font-family:Tahoma'><img width=205
    height=33 id="_x0000_i1037" src="images/navtablebgright.gif">
                      <o:p></o:p>
            </span></p></td>
          </tr>
		  <tr >
      				<td align='left' colspan=2 ><font size="+1" face="Book Antiqua">Welcome! <%=user %></font></td>

    	</tr>
		<tr width=""  >
      <td align='left' colspan="8" ><form name="form1" method="post" action="Normal.jsp?value=again">
          <img src="images/spacer.gif" width="179" height="9">Search <img src="images/spacer.gif" width="11" height="9">
          <label>
          <input type="text" name="textfield" value="<%=searchword%>" />
		   <%
		  // String value1=request.getParameter("textfield");
		   //session.setAttribute("text",value1);%>
          </label>
          <label> <img src="images/spacer.gif" width="5" height="9">
          <input type="submit" name="Submit" value="Submit">
          </label>
        </form>
          <%
			String path=request.getParameter("file");
			//out.println(path);
			ResultSet rs=st.executeQuery("select counter from PRA where location='"+path+"' ");
			int count=0;
			while(rs.next())
			{
				count=rs.getInt(1);
			}
			count++;
			st.executeUpdate("update PRA set counter='"+count+"' where location='"+path+"'");
		
			File f=new File(path);
			BufferedReader bf=new BufferedReader(new FileReader(f));
			String line="";
			
			String content="";
			String address="";
			out.println("<br><br>");
			while((line=bf.readLine())!=null)
			{
				out.println(line+"<br>");
				
			}
			
			//out.println("<a href='Normal.jsp?value=null'>"+"<font color='green'>Back</font></a>");
			//out.println(address);
			//address="";
			
		
	%>
      </td>
    </tr>
	<tr>
	<td colspan="8">
	
	</td>
	</tr>
        </table>
          <p class=MsoNormal111>     
      </tr>
    
    
    <tr style='mso-yfti-irow:3'>
      <td height="24" style='padding:0in 0in 0in 0in'><p class=MsoNormal111>
    </tr >
    <tr style='mso-yfti-irow:4;height:39.75pt'>
      <td colspan=3 style='padding:0in 0in 0in 0in;height:39.75pt'><table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width=675
   style='width:506.25pt;mso-cellspacing:0in;mso-padding-alt:0in 0in 0in 0in'
   id="Table_03" height=77>
          <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes'>
            <td height="53" style='padding:0in 0in 0in 0in'><p class=MsoNormal111><span style='font-family:Tahoma'><img width=95
    height=53 id="_x0000_i1052" src="images/basebgleft.gif">
                      <o:p></o:p>
            </span></p></td>
			
            <td style='padding:0in 0in 0in 0in'><p class=MsoNormal111><span style='font-family:Tahoma'>
                <map
    name=MicrosoftOfficeMap0>
                  <area shape=Rect
    coords="109, 18, 149, 37">
                  <a href="Index.jsp">
                  <area shape=Rect
    coords="150, 18, 205, 37">
                  <a href="AboutUs.jsp">
                  <area shape=Rect
    coords="206, 18, 269, 37">
                  <a href="ContactUs.jsp">
                  <area shape=Rect
    coords="270, 18, 327, 37">
                  <a href="Products.jsp">
                  <area shape=Rect
    coords="328, 18, 382, 37">
                  <a href="Services.jsp">
                </map>
                <img border=0 width=495 height=53
    id="_x0000_i1053" src="images/basebgmid.gif" usemap="#MicrosoftOfficeMap0">
                <o:p></o:p>
            </span></p></td>
            <td style='padding:0in 0in 0in 0in'><p class=MsoNormal111><span style='font-family:Tahoma'><img width=120
    height=53 id="_x0000_i1054" src="images/basebgright.gif">
                      <o:p></o:p>
            </span></p></td>
          </tr>
          <tr>
            <td colspan="3" background="images/navtablebgleft.gif" width="708" height="24"><marquee scrolldelay="100">
              <font face="Book Antiqua" color="white" size="3"><b>TRUTH FINDER</b></font>
            </marquee></td>
          </tr>
        </table>
          <p class=MsoNormal111><span style='font-family:Tahoma'>
            <o:p></o:p>
        </span></p></td>
    </tr>
    <![if !supportMisalignedColumns]>
    <tr height=0>
      <td width=4 style='border:none'></td>
      <td width=1 style='border:none'></td>
      <td width=713 style='border:none'></td>
      <td width=1 style='border:none'></td>
      <td width=56 style='border:none'></td>
    </tr>
    <![endif]>
  </table>
</div>

<p class=MsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>
