<%@page import="db.DB"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>

<%

Connection con=DB.getCon();

Statement stmt = con.createStatement();
//data = new JdbcCategoryDataset(con);
String query="select * FROM result";
JDBCCategoryDataset dataset=new JDBCCategoryDataset(con);
dataset.executeQuery( query);
JFreeChart chart = ChartFactory .createBarChart3D(
"User Monitor By Vizuvalization",
"emailid",
"marks",
dataset,
PlotOrientation.VERTICAL,true, true,false);
try
{
ChartUtilities.saveChartAsJPEG(new File("d:\\chart1.jpg"), chart, 400, 300);
}
catch (IOException e)
{
System.out.println("Problem in creating chart.");
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>display graph</title>
    </head>
    <body bgcolor="gray">
        <IMG SRC="d:\\chart1.jpg" WIDTH="600" HEIGHT="400"
         BORDER="0" USEMAP="#chart">
    </body>
</html>