<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<script type="text/javascript" src='script.js'></script>
</head>

<body>
<%
response.setHeader("Cache-Control","no-store"); //HTTP 1.1
response.setHeader("Pragma","no-cache"); //HTTP 1.0
response.setDateHeader("Expires", 0); //prevents caching at the proxy server
%>	

<%
if(session.getAttribute("name")==null)
response.sendRedirect("SessionExpire.jsp");
%>

<div align="right" style="width: 100%; height: 5%; background-color: brown;font-size: 20px;">
	<%=session.getAttribute("username")%>
<a href="http://localhost:8080/javawebapp/Signout.jsp">Logout</a><br>
</div>

<div align="right" style="font-size: 40px;">
	Your B'day: <font color="yellow"><%=session.getAttribute("bday")%>-<%=session.getAttribute("bmonth")%></font>
</div>

<center>
	<h1>Welcome <%=session.getAttribute("name")%></h1>
	<br><br><br><br>
</center>

</body>
</html>