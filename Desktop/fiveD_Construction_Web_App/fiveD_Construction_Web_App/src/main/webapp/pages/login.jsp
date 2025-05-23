<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Login</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<style>
body {
	margin: 0;
	font-family: 'Segoe UI', sans-serif;
	background-image: url('/resources/images/status-bg-img.jpg');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	height: 100vh;
	position: relative;
}

.overlay {
	background: rgba(0, 0, 0, 0.3);
	width: 100%;
	height: 100vh;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 1;
}

.top-nav {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 50px;
	position: top;
	top: 0;
	width: 100%;
	z-index: 2;
}

.top-nav .nav-links a {
	margin-right: 100px;
	color: white;
	text-decoration: none;
	font-size: 16px;
	font-weight: 500;
}

.top-nav .nav-links a:hover {
	text-decoration: underline;
}

.company-logo {
	color: white;
	font-weight: bold;
	font-size: 20px;
}

.login-box {
	position: relative;
	z-index: 2;
	width: 400px;
	background: grey;
	border-radius: 20px;
	padding: 40px 30px;
	margin: 120px auto;
	box-shadow: 0 12px 24px rgba(0, 0, 0, 0.5);
	color: #ffffff;
}

.login-box h2 {
	text-align: center;
	font-size: 26px;
	font-weight: bold;
	margin-bottom: 30px;
}

.login-box label {
	font-weight: 500;
	color: #ffffff;
}

.login-box input[type="text"], .login-box input[type="password"] {
	width: 100%;
	padding: 12px 1px;
	margin: 10px 0 20px 0;
	border: none;
	border-radius: 25px;
	background: #f5f5f5;
	color: #333;
	box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.1);
}

.login-box input[type="submit"] {
	width: 100%;
	padding: 12px;
	border: none;
	border-radius: 25px;
	background: #001e3c;
	color: white;
	font-weight: bold;
	font-size: 16px;
	cursor: pointer;
	transition: background 0.3s;
}

.login-box input[type="submit"]:hover {
	background-color: #333;
}

.login-box .signup {
	text-align: center;
	margin-top: 15px;
	font-size: 14px;
}

.login-box .signup a {
	color: #fff;
	font-weight: bold;
	text-decoration: none;
}

.login-box .signup a:hover {
	text-decoration: underline;
}

@media ( max-width : 480px) {
	.login-box {
		width: 90%;
		margin-top: 60px;
	}
	.top-nav {
		flex-direction: column;
		align-items: flex-start;
		padding: 15px 30px;
	}
	.top-nav .nav-links {
		margin-top: 10px;
	}
}
</style>
</head>
<body>

	<!-- Background overlay -->
	<div class="overlay">

		<!-- Navigation -->
		<div class="top-nav">
			<div class="company-logo">
				5D Construction <i class="fas fa-chart-line"></i>
			</div>
			<div class="nav-links">
				<a href="index">Home</a> <a href="index">About Us</a> <a
					href="index">Help</a>
			</div>
		</div>

		<!-- Login Box -->
		<div class="login-box">
		<h3>${msg}</h3>
			<h2>LOGIN TO YOUR ACCOUNT</h2>
			<form action="bookStatus" method="get">
				<label for="email">Email :</label>
				 <input type="text" id="email"	placeholder="     Email" name="email" required /> 
				 <label	for="password">Password :</label> 
				 <input type="password"	id="password" placeholder="     Password" name="password" required />

				<input type="submit" value="LOGIN" />
			</form>
			<div class="signup">
				Don't have an account? <a href="singup">Sign Up now</a>
			</div>
		</div>
	</div>
</body>
</html>
