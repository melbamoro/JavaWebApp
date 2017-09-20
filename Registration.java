import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Registration extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{

	try{
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		
		String username = request.getParameter("username");

		String bday=request.getParameter("bday");
		String bmonth=request.getParameter("bmonth");
		String byear=request.getParameter("byear");
		
		String gender=request.getParameter("gender");

		String password=request.getParameter("password");
		
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:project","system","Louis1027");
		 
		String query="insert into user_data values('"+firstname+"','"+lastname+"','"+username+"','"+password+"','"+bday+"','"+bmonth+"','"+byear+"','"+gender+"')";

		Statement stmt=con.createStatement();
		stmt.execute(query);

		response.sendRedirect("http://localhost:8080/javawebapp/AccountCreated.jsp");
		}
	
		catch(SQLException e){
		System.out.println("SQL ERROR");
		response.sendRedirect("http://localhost:8080/javawebapp/index.jsp?username=exist");
		}
		
		catch(Exception e){
			System.out.println("You Got Some Error");
			e.printStackTrace();
		}
	}

}