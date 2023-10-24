<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ROLES</title>
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

						

						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
									<form method="post" action="saverole">
										<div class="mb-3">
											<label class="form-label">RoleName </label> <input
												class="form-control form-control-lg" type="text"
												name="roleName" placeholder="Enter your Role name" />
										</div>
										<br>
										<div class= mt-3">
											<button input type="submit" class="btn btn-lg btn-primary">
												Submit</button>

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
</html>