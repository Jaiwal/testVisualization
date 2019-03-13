package db;

import java.sql.*;

public class DB {

	public static void main(String[] args) {
		getCon();
	}
	public static Connection getCon()
	{
		Connection con=null;
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","test","test");
			System.out.println("Connection created!!!!!");
		}catch (Exception e) {
			System.out.println(e);
			// TO DO: handle exception
		}
		return con;
	}

}
