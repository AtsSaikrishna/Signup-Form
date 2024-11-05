<%
	if(session.getAttribute("name") == null){
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<h1>Successfully login to your account</h1>
</body>
</html>