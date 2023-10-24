<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">
</head>
<body>
	<main class="d-flex w-100">
		<div class="container d-flex flex-column">
			<div class="row vh-100">
				<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">

						<div class="text-center mt-4">
							<h1 class="h2">Get started</h1>
							<p class="lead">Start creating the best possible user
								experience for you customers.</p>
						</div>

						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
									<form method="post" action="signin">
										<div class="mb-3">
											<label class="form-label">FirstName </label> <input
												class="form-control form-control-lg" type="text"
												name="firstname" placeholder="Enter your First name" /><span
												class="isError">${FNameError}</span>
										</div>
										<div class="mb-3">
											<label class="form-label">LastName</label> <input
												class="form-control form-control-lg" type="text"
												name="lastname" placeholder="Enter your Last name" /><span
												class="isError">${LNameError}</span>
										</div>
										<div class="mb-3">
											<label class="form-label">Email</label> <input
												class="form-control form-control-lg" type="email"
												name="email" placeholder="Enter your email" /><span
												class="isError">${EmailError}</span>
										</div>
										<div class="mb-3">
											<label class="form-label">Password</label> <input
												class="form-control form-control-lg" type="password"
												name="password" placeholder="Enter Your Password" /> <span
												class="isError">${PasswordError}</span>

										</div>

										<div class="MB-3">
											<input class="form-check-input" name="gender" value="male"
												type="radio" name="flexRadioDefault" id="flexRadioDefault1">
											<label class="form-check-label" for="flexRadioDefault1">Male
												<BR>
											</label> <input class="form-check-input" name="gender" value="female"
												type="radio" name="flexRadioDefault" id="flexRadioDefault1">
											<label class="form-check-label" for="flexRadioDefault1">Female<span
												class="isError">${GenderError}</span>

											</label>
										</div>
										<BR>
										<div class="MB-3">
											<label for="exampleInputEmail1">Date Of Birth</label> <input
												type="date" name="dob" class="form-control"
												id="exampleInputEmail1" aria-describedby="emailHelp"
												placeholder="Enter Date Of Birth"><span
												class="isError">${DateError}</span>
										</div>

										<div class="MB-3">
											<label for="exampleInputEmail1"></label> <input type="submit"
												name="submit" value="Submit" class="form-control"
												id="exampleInputEmail1" aria-describedby="emailHelp">
										</div>
										 <div class="text-center mt-3">
											<button input type="submit" class="btn btn-lg btn-primary">
												Sign up</button>

										</div>
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</main>
	
</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V16</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/css/util.css">
	<link rel="stylesheet" type="text/css" href="login/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('login/images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					SIGN UP !
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5" action="signin" method="post">

					<div class="wrap-input100 validate-input" data-validate = "Enter firstname">
						<input class="input100" type="text" name="firstname" placeholder="FirstName">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Enter lastname">
						<input class="input100" type="text" name="lastname" placeholder="Last name">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>
					

					<div class="wrap-input100 validate-input" data-validate = "Enter email">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Enter gender">
						<input class="input100" type="radio" name="gender" value ="male" placeholder="MALE">
						<input class="input100" type="radio" name="gender" value="female" placeholder="FEMALE">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Enter Date">
						<input class="input100" type="date" name="dob" placeholder="Date">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
		
					<span style="color: red;margin-left: 100px;">${message }</span>
					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn">
							SignIn
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="login/vendor/bootstrap/js/popper.js"></script>
	<script src="login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="login/vendor/daterangepicker/moment.min.js"></script>
	<script src="login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="login/js/main.js"></script>

</body>
</html>