package farm.pkg;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/loginregister")
public class loginregister extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

    public loginregister() 
    {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Customer_Interface cd = new Customer_Impl();
		// during login
		
		String phoneNo = request.getParameter("phone");
		String passWord	= request.getParameter("password");
		String userName	= request.getParameter("username");
		String submitType	= request.getParameter("submit");
		
		Customer c=cd.getCustomer(phoneNo, passWord, userName);
		//String user="User";
				
		if(submitType.equals("Login") && c!=null && c.getPhone()!=null)
		{
			if(c.getUsername()==null)
			{
				request.setAttribute("message" , c.getPhone());
			
				request.getRequestDispatcher("Home Page.jsp").forward(request,response);
			}
			else
			{
				request.setAttribute("message", c.getUsername());
				request.getRequestDispatcher("Home Page.jsp").forward(request,response);
				
			}
		}
		else if (submitType.equals("Sign Up"))
		{
			c.setUsername(userName);
			c.setPhone(phoneNo);
			c.setPassword(passWord);
			cd.insertCustomer(c);
			request.setAttribute("successmessage", "Registered Successfully, Please Login To Proceed");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("message", "Data Not Found, Please Register and Try again");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		doGet(request, response);
	}

}
