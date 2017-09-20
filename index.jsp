<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Web Project</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<script type="text/javascript" src='script.js'></script>
</head>
<body>

<table width="100%" height="15%">
	<tr>
		<td><h2>**Java Web Project**</h2></td>
		<td width="200px"></td>
		<td>
			<form method="post"  action="http://localhost:8080/javawebapp/login">
			Username: <input type="text" name="username"  class="textbox">
			Password: <input type="password" name="password"  class="textbox">
			<input type="submit" value="Login" class="circle" onclick="return checkLogin(this.form);">
			</form>
		</td>
	</tr>
</table>
<center><h3 id="error"></h3></center>

<%
	if(request.getParameter("result")!=null){%>
<center>
<div style="height:25px; width:280px; background-color:red">
<b>Wrong username or password</b>
</div>
</center>
<% }%>

<hr>

<%
	if(request.getParameter("username")!=null){%>
	<center>
		<div style="height:40px; width:400px; background-color:red">
		<b>Username already in use. Please try another</b>
		</div>
	</center>
<% }%>



<table width="100%">
<tr>
<td width="800px" align="center"><h1>**Welcome**</h1></td>

<td>

<form method="post" action="http://localhost:8080/javawebapp/registration">
	<h1>Create Account</h1>
		<table>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="firstname" class="textbox"></td>
			</tr>
			<tr height="20px">
				<td></td>
				<td id="firstname"></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastname" class="textbox"></td>
			</tr>
			<tr height="20px">
				<td></td>
			</tr>						
			
			<tr>
				<td>User Name</td>
			<td><input type="text" autocomplete="off" name="username" id="checkusername" class="textbox" onkeyup="return checkUsername();"></td>
			</tr>
			<tr height="20px">
			<td></td>
				<td id="username"></td>
			</tr>		
			
			<tr>
				<td>Date of Birth:</td>
				<td>
					<select name="bday" class="dob">
						<option>Day</option>
						<% for(int i=1; i<=31; i++){ %>
						<option><%=i%></option>
						<%} %>
					</select>
					
					<select name="bmonth" class="dob">
					<option>Jan</option>
					<option>Feb</option>
					<option>Mar</option>
					<option>Apr</option>
					<option>May</option>
					<option>Jun</option>
					<option>Jul</option>
					<option>Aug</option>
					<option>Sept</option>
					<option>Oct</option>
					<option>Nov</option>
					<option>Dec</option> 												
					</select>
					
					
					<select name="byear" class="dob">
						<option>Year</option>
						<% for(int i=2013;i>=1920;i--){%>
						<option><%=i %></option>
						<%} %>					
					</select>
				</td>
			</tr>	
			
			<tr height="20px">
				<td></td>
				<td id="dob"></td>
			</tr>
			
			<tr>
				<td>Gender:</td>
				<td>
					Female<input type="radio" name="gender" value="Female">
					Male<input type="radio" name="gender" value="Male">
					Other<input type="radio" name="gender" value="other">
				</td>	
			</tr>
			
			<tr height="20px">
				<td></td>
				<td id="gender"></td>
			</tr>
			
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" class="textbox"></td>
			</tr>
			
			<tr height="20px">
				<td></td>
				<td id="password"></td>
			</tr>
			
			<tr>
				<td>Re-Enter Password</td>
				<td><input type="password" name="password" class="textbox"></td>
			</tr>
			
			<tr height="20px">
				<td></td>
				<td id="cpassword"></td>
			</tr>
			
			<tr>
				<td></td>
				<td>
				<input type="checkbox" name="tems"><a href="tems&conditions.jsp" target="_blank">I agree terms and conditions</a>
				</td>
				
			</tr>
			
			<tr>
			<td><input type="submit" value="Create" class="circle" onclick="return checkRegistration(this.form);"></td>
				<td><input type="reset" value="Clear" class="circle"></td>
			</tr>	
			
		</table>
</form>

</td>
</tr>
</table>


</body>
</html>	
		