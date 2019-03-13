<%@page import="db.DB"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>
<%@include file="config.jsp" %>

<%
Connection con=DB.getCon();
Statement  stmt = con.createStatement();
//data = new JdbcCategoryDataset(con);

String query=" select qno,nop from result where emailid='"+(String)session.getAttribute("graphuser")+"' and subject='JAVA'";

JDBCCategoryDataset dataset=new JDBCCategoryDataset(con);

dataset.executeQuery( query);

JFreeChart chart = ChartFactory .createBarChart3D("Options Graph of "+(String)session.getAttribute("graphuser"),"Questions","OptionCount",dataset, PlotOrientation.VERTICAL,true, true,false);
//JFreeChart chart = ChartFactory .createLineChart3D("Options Graph of "+(String)session.getAttribute("graphuser"),"Questions","OptionCount",dataset, PlotOrientation.VERTICAL,true, true,false);
try
{
ChartUtilities.saveChartAsJPEG(new File("d:\\optionsgraph.jpg"), chart, 400, 300);
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
    <body  style="background-color: #f3f3f3">
        <table>
            <tr><td><a href="OptionsGraph.jsp">OptionsGraph</td><td><a href="MarksGraph.jsp">MarksGrpah</td></tr>
        </table>
        <IMG SRC="d:\\optionsgraph.jpg" WIDTH="600" HEIGHT="400"  BORDER="0" USEMAP="#chart">
    </body>
</html>