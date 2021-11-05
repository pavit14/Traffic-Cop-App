<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Police Central Team Login</title>
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	

	

</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/img.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">
				<form class="login100-form validate-form" action="centrallogin" method="post">
					<div class="login100-form-avatar">
						<img src="images/team.jpg" alt="AVATAR">
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
						Login Page
					</span>

					<table><tr><td>${message}</td></tr>
                  <tr><td>${successmessage}</td></tr></table>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>

					<div class="container-login100-form-btn p-t-10" >
						<button class="login100-form-btn" type="submit" name="submit" value="login">
							Login
						</button>
					</div>

					<div class="text-center w-full p-t-25 p-b-230">
						<a href="centralregister.jsp" class="txt1">
							Register here
						</a>
						<br>
						<a href="home.jsp" class="txt1">
							Home Page
						</a>
					</div>
					
				</form>
			</div>
		</div>
	</div>
</body>
</html>
            