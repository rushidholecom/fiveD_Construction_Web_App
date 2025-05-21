<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Responsive Register Form</title>



<style>

body {

	background-image: url('/resources/images/status-bg-img.jpg');
}

.register {
	margin: 5% auto;
	background: grey;
	border-radius: 10px;
	padding: 30px;
	box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.9);
	max-width: 1200px;
}

.register-left {
	text-align: center;
	color: #fff;
	background-color: #001e3c;
	border-radius: 10px;
	border-radius: 10px;
	padding: 50px;
}

.register-left img {
	width: 60%;
	margin-bottom: 20px;
}

.register-left h3 {
	margin-top: 0px;
}

.register-left input {
	background: #fff;
	color: #3931af;
	border: none;
	padding: 10px 20px;
	border-radius: 20px;
	font-weight: bold;
	margin-top: 30px;
}

.register-right {
	padding: 30px;
	
}

.btnRegister {
	float: right;
	border: none;
	border-radius: 1.5rem;
	padding: 2%;
	background: #001e3c;
	color: #fff;
	font-weight: 600;
	width: 50%;
	cursor: pointer;
}

.register-heading {

	text-align: center;
	margin-bottom: 20px;
	color: #001e3c;
}

@media screen and (max-width: 768px) {
	.register {
		flex-direction: column;
	}
	.register-left, .register-right {
		border-radius: 0 !important;
		text-align: center;
	}
}
</style>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>

	<div class="container register">
		<div class="row">
			<div
				class="col-md-4 register-left d-flex flex-column align-items-center justify-content-center">
				<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				<h2>${msg}</h2>
				<h1>Welcome</h1>
				<h3>You are 30 seconds away to book an Appoinment for your dream
					House!</h3>

			</div>
			<div class="col-md-8 register-right">
				<ul class="nav nav-tabs nav-justified mb-3" id="myTab"
					role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="employee-tab" data-toggle="tab" href="#employee" role="tab"
						aria-controls="employee" aria-selected="true"><h3>Register
								for an Appoinment</h3> </a></li>

				</ul>
				<form action="book" method="post">
					<div class="tab-content" id="myTabContent">
						<!-- Employee Tab -->
						<div class="tab-pane fade show active" id="employee"
							role="tabpanel" aria-labelledby="employee-tab">

							<h3 class="register-heading">Apply</h3>
							<div class="row">

								<div class="col-md-6">

									<input type="text" class="form-control mb-3"
										placeholder="Name *" name="name" />
									<div class="input-group mb-3">
										<input type="password" class="form-control" id="password"
											placeholder="Password *" name="password" />
										<div class="input-group-append">
											<span class="input-group-text" onclick="togglePassword()">
												<i class="fa fa-eye" id="eyeIcon"></i>
											</span>
										</div>
									</div>

									<input type="Location" class="form-control mb-3"
										placeholder="Location" name="location" />

									<div class="form-group mb-3">
										<label class="mr-3">Gender:</label> <label
											class="radio-inline mr-2"> <input type="radio"
											name="gender" value="male" checked> Male
										</label> <label class="radio-inline"> <input type="radio"
											name="gender" value="female"> Female

										</label>
										<!-- Login link -->
										<div class="form-group">
											<a href="login" class="btn btn-link mt-2 pl-0">Already
												have an account? <strong>Login</strong>
											</a>
										</div>

									</div>


								</div>

								<div class="col-md-6">


									<input type="email" class="form-control mb-3"
										placeholder="Email *" name="email" /> <input type="text"
										maxlength="10" class="form-control mb-3" placeholder="Phone *"
										name="phone" /> <select name="type" class="form-control mb-3">
										<option disabled selected>Select Construction Type</option>
										<option>New Construction</option>
										<option>Comercial Construction</option>
										<option>Renovation Construction</option>
									</select> <input type="text" class="form-control mb-3"
										placeholder="Answer *" name="answer" /> <input type="submit"
										class="btnRegister" value="Book" />

								</div>

							</div>
						</div>


					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		function togglePassword() {
			const passwordInput = document.getElementById("password");
			const eyeIcon = document.getElementById("eyeIcon");
			if (passwordInput.type === "password") {
				passwordInput.type = "text";
				eyeIcon.classList.remove("fa-eye");
				eyeIcon.classList.add("fa-eye-slash");
			} else {
				passwordInput.type = "password";
				eyeIcon.classList.remove("fa-eye-slash");
				eyeIcon.classList.add("fa-eye");
			}
		}
	</script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

</body>
</html>
