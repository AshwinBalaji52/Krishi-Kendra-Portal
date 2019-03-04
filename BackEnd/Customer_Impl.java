package farm.pkg;
import java.sql.*;

public class Customer_Impl implements Customer_Interface 
{

	static Connection con;
	static PreparedStatement ps;
	@Override
	public int insertCustomer(Customer c) 
	{
		int status=0;
		try
		{
			con=MyConnectionProvider.getCon();
			ps =con.prepareStatement("insert into Customer (Phone,Password,Name) values(?,?,?)");
			ps.setString(1, c.getPhone());
			ps.setString(2, c.getPassword());
			ps.setString(3, c.getUsername());
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}

	@Override
	public Customer getCustomer(String phoneNo, String passWord, String userName) 
	{
		Customer c=new Customer();
		try
		{
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("select * from Customer where Phone=? and Password=?");
			ps.setString( 1 , phoneNo);
			ps.setString( 2 , passWord);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				c.setPhone(rs.getString("Phone"));
				c.setPassword(rs.getString("Password"));
				c.setUsername(rs.getString("Name"));
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return c;
	}

}
