package Repositeries;

import java.sql.*;

public class SQLconfig {
	protected Connection con;
	protected ResultSet rs;
	protected PreparedStatement stmt;
	public SQLconfig()
	{
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voting","root","root");
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}
	}
}
