import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{

		try{

			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con=DriverManager.getConnection("jdbc:odbc:project","system","Louis1027");
			Statement stmt = con.createStatement();

			String query="Select * from user_data where username='"+username+"' and password='"+password+"'";

			ResultSet rs=stmt.executeQuery(query);

			if (rs.next())
			{

				String firstname=rs.getString("firstname");
				String bday=rs.getString("Birth_day");
				String bmonth=rs.getString("birth_month");
				String byear=rs.getString("birth_year");
				String gender=rs.getString("gender");

				HttpSession hs = request.getSession();

				hs.setAttribute("name",firstname);
				hs.setAttribute("username",username);
				hs.setAttribute("bday",bday);
				hs.setAttribute("bmonth",bmonth);
				hs.setAttribute("byear",byear);
				hs.setAttribute("gender",gender);

				response.sendRedirect("http://localhost:8080/javawebapp/Userhome.jsp");
			}
				else{
				response.sendRedirect("http://localhost:8080/javawebapp/index.jsp?result=Failure");	
				}
			}
			catch(Exception e){
				System.out.println("We got some error");
			e.printStackTrace();
			response.sendRedirect("SessionExpire.jsp");
			}

	}
}
