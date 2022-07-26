<!doctype html>
<html lang="en">

<head>
	<title>Login Siventalis</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<style>
		@import url("//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");

		.login-block {
			background: #000000;
			/* fallback for old browsers */
			background: -webkit-linear-gradient(to bottom, #ffffff, #000000);
			/* Chrome 10-25, Safari 5.1-6 */
			background: linear-gradient(to bottom, #ffffff, #000000);
			/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
			float: left;
			width: 100%;
			height: 1000px;
			padding: 50px 0;
		}

		.banner-sec {

			background-size: cover;
			min-height: 500%;
			border-radius: 0 10px 10px 0;
			padding: 0;
		}

		.container {
			background: #fff;
			border-radius: 10px;
			box-shadow: 15px 20px 0px rgba(0, 0, 0, 0.1);
		}

		.carousel-inner {
			border-radius: 0 10px 10px 0;
		}

		.carousel-caption {
			text-align: left;
			left: 5%;
		}

		.login-sec {
			padding: 50px 30px;
			position: relative;
		}

		.login-sec .copy-text {
			position: absolute;
			width: 80%;
			bottom: 20px;
			font-size: 13px;
			text-align: center;
		}

		.login-sec .copy-text i {
			color: #FEB58A;
		}

		.login-sec .copy-text a {
			color: #E36262;
		}

		.login-sec h2 {
			margin-bottom: 30px;
			font-weight: 800;
			font-size: 30px;
			color: #DE6262;
		}

		.login-sec h2:after {
			content: " ";
			width: 100px;
			height: 5px;
			background: #FEB58A;
			display: block;
			margin-top: 20px;
			border-radius: 3px;
			margin-left: auto;
			margin-right: auto
		}

		.btn-login {
			background: #DE6262;
			color: #fff;
			font-weight: 600;
		}

		.banner-text {
			width: 70%;
			position: absolute;
			bottom: 40px;
			padding-left: 20px;
		}

		.banner-text h2 {
			color: #fff;
			font-weight: 600;
		}

		.banner-text h2:after {
			content: " ";
			width: 100px;
			height: 5px;
			background: #FFF;
			display: block;
			margin-top: 20px;
			border-radius: 3px;
		}

		.banner-text p {
			color: #fff;
		}
	</style>

</head>

<body>

	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	
	<section class="login-block">
		<div class="container">
		@if (isset($Message))
	<div class="alert alert-danger">
		{{$Message}}
	</div>
	@endif
			<div class="row" style="margin-top: 10%;">
				<div class="col-md-4 login-sec">
					<h2 class="text-center">LOGIN</h2>
					<form action="{{ url('login') }}" method="post">
						@csrf
						<div class="form-group">
							<label for="exampleInputEmail1" class="text-uppercase">Username</label>
							<input type="text" name="username" class="form-control" placeholder="">

						</div>
						<div class="form-group">
							<label for="exampleInputPassword1" class="text-uppercase">Password</label>
							<input type="password" name="password" class="form-control" placeholder="">
						</div>

						<div class="form-check">

							<button class="btn btn-login float-right"><span class="fa fa-save"></span> Login</button>
						</div>

					</form>

				</div>
				<div class="col-md-8">
					<div id="" class="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="img-fluid" src="{{url('public/foto')}}/login.png" alt="">
								<div class="carousel-caption d-none d-md-block">
									<div class="banner-text">

									</div>
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
	</section>
</body>

</html>