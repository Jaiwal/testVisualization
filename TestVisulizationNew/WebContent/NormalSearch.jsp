<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import ="java.lang.*"%>
<%

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:PROFFESI-D79C2B","sndddp","truth");
	Statement st=con.createStatement();
	String searchword=(String)application.getAttribute("text");
	String method=(String)application.getAttribute("method");
	String user=(String)session.getAttribute("uname");
	//out.println(searchword+"<br>"+method);
	ResultSet rs=st.executeQuery("select location from MainDb where filename='"+searchword+"'");
	String location="";
	while(rs.next())
	{
		location=rs.getString(1);
		out.println(location);
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
						
						out.println(filename+"<br>");
						
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
	%>