import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckUsername extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		try{
			String username=request.getParameter("username");
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

			Connection con=DriverManager.getConnection("jdbc:odbc:project","system","Louis1027");
			Statement stmt = con.createStatement();
			String query="Select * from user_data where username='"+username+"'";

			ResultSet rs=stmt.executeQuery(query);

			if(rs.next()){
out.println("<div style='height:20px;width:280px;border:5px solid red;background-color:red'>Username Exist..!</div>");			
			}
			else{
out.println("<div style='height:20px;width:280px;border:5px solid red;background-color:green'>Username Available..!</div>");		
			}

		}

		catch(Exception e){
			System.out.println("We got some error");
			e.printStackTrace();
		}
	}
}

