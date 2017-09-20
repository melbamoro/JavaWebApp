<!DOCTYPE html>
<html>
<head>
	<title>::Sign out::</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<script type="text/javascript" src="script.js"></script>
</head>

<body>
<%session.invalidate();%>
<center>
	<h1>You are currently Signed out<br>
	<a href="http://localhost:8080/javawebapp/index.jsp">Login</a> to continue..
	</h1>
</center>
</body>
</html>>