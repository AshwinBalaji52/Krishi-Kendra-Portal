package farm.pkg;
import java.sql.*;

public class MyConnectionProvider implements MyProvider 
{
	static Connection con=null;
	
	public static Connection getCon()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(connUrl,user,pswd);
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}

}
