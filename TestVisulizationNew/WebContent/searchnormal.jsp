<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import ="java.lang.*"%>
<%
	String result="";
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:PROFFESI-D79C2B","sndddp","truth");
	Statement st=con.createStatement();
	String searchword=(String)application.getAttribute("text");
	
	String method=(String)application.getAttribute("method");
	String user=(String)session.getAttribute("uname");
	
		String word=request.getParameter("textfield");
		ResultSet rs=st.executeQuery("select location from MainDb where filename='"+searchword+"'");
	String location="";
	while(rs.next())
	{
		location=rs.getString(1);
		
	}
		String filename="";
		String filenames[]=null;
		File path=new File(location);
		File files[]=path.listFiles();
		if(files!=null)
		{
		
		
			for(int i=0;i<files.length;i++)
			{
			
				
				if(files.length==0)
				{
					out.println("");
				}
				else
				{
//					System.out.println("compiling");
					try
					{
					
						filename=files[i].toString();
						//String names=filename.replace('\\','&');
						//filenames=names.split("&");
						//out.println(filenames.length+"<br>");
					
							//Thread.sleep(1000);
					//	out.println(filenames[filenames.length-1]+"<br>");
						
						result+=filename+"$";
						
					}
					catch (Exception ee)
					{
						ee.printStackTrace();
					}
					
				}
			}
			
		}
		else
		{
			//proxy1.jLabel3.setText("completed.....");
		}

		response.sendRedirect("Normal.jsp?result="+result);
%>