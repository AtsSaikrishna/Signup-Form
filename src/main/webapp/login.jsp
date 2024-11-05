<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="CSS/login.css">
</head>
<body>
<input type="hidden" id="status" value= "<%= request.getAttribute("status") %>">
	<div class="main">
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div>
						<a href="registration.jsp" class="signup-link">Create an
							account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign In</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="email"></label> 
								<input
									type="text" name="email" id="username"
									placeholder="Email" />
							</div>
							<div class="form-group">
								<label for="password"></label> <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>

					</div>
				</div>
			</div>
		</section>

	</div>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script type="text/javascript">
	let status = document.getElementById("status").value;
	if(status == "failed"){
		swal("Sorry", "Wrong Username or Password","failed");
	}
</script>
</body>
</html>