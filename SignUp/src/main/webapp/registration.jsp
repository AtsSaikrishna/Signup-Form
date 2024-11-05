<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
<link rel="stylesheet" href="CSS/styles.css">

</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>"> 
	<div class="main">
    <section class="signup">
        <div class="container">
            <div class="signup-content">

                <div class="signup-image">
                    
                    <a href="login.jsp" class="signup-image-link">I am already a member</a>
                </div>

                <div class="signup-form">
                    <h2 class="form-title">Sign up</h2>
                    <form method="post" action="register" class="register-form" id="register-form">
                        <div class="form-group">
                            <label for="name"></label>
                            <input type="text" name="name" id="name" placeholder="Your Name" />
                        </div>
                        <div class="form-group">
                            <label for="email"></label>
                            <input type="email" name="email" id="email" placeholder="Your Email" />
                        </div>
                        <div class="form-group">
                            <label for="pass"></label>
                            <input type="password" name="pass" id="pass" placeholder="Password" />
                        </div>
                        <div class="form-group">
                            <label for="confirmPassword"></label>
                            <input type="password" name="confirmPassword" id="confirmPassword" placeholder="confirm Password" />
                        </div>
                        <div class="form-group">
                            <label for="contact"></label>
                            <input type="text" name="contact" id="contact" placeholder="Contact no" />
                        </div>

                        <div class="form-group form-button">
                            <input type="submit" name="signup" id="signup" class="form-submit" value="Register" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
	let status = document.getElementById("status").value;
	if(status == "success"){
		swal("Congrats", "Account created successfully", "success")
	}
</script>
	
</body>
</html>