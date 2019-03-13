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

Statement stmt = con.createStatement();
//data = new JdbcCategoryDataset(con);
session.setAttribute("graphuser",request.getParameter("user11"));
String query="select levell,count(qno) from result where emailid='"+request.getParameter("user11")+"' group by levell";
//String query="select levell,count(qno) from result where emailid='"+(String)session.getAttribute("GraphUser")+"' group by levell";
JDBCCategoryDataset dataset=new JDBCCategoryDataset(con);
dataset.executeQuery( query);
JFreeChart chart = ChartFactory .createBarChart3D("Results Graph of "+request.getParameter("user11"),"Level","TotalQuestions",dataset, PlotOrientation.VERTICAL,true, true,false);
try
{
ChartUtilities.saveChartAsJPEG(new File("d:\\levelgraph.jpg"), chart, 400, 300);
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
    <body style="background-color: #f3f3f3">
        <table>
        <tr><td><a href="OptionsGraph.jsp">OptionsGraph</td> <td><a href="MarksGraph.jsp">MarksGraph</td></tr>
        </table>
        <IMG SRC="d:\\levelgraph.jpg" WIDTH="600" HEIGHT="400"  BORDER="0" USEMAP="#chart">
    </body>
</html>