<!doctype html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>Student Login</title>
<link rel="stylesheet" href="<?= base_url('assets/css/bootstrap.min.css') ?>">
<link rel="stylesheet" href="<?= base_url('assets/css/jquery-ui.min.css') ?>">
<link rel="stylesheet" href="<?= base_url('assets/css/all.min.css') ?>">
<script src="<?= base_url('assets/js/jquery.min.js'); ?>"></script>
<script src="<?= base_url('assets/js/jquery-ui.min.js'); ?>"></script>
<script src="<?= base_url('assets/js/bootstrap.min.js'); ?>"></script>
<script src="<?= base_url('assets/js/all.min.js'); ?>"></script>
<style>
	.navbar{
		background-color:#540000;
		position:fixed;
		top:0px;
		width:100%;
		z-index:1;
	}
	.navbar-dark .navbar-nav .nav-link{
		font-size:17px;
		color:white;
	}
	body{
		height:100%;
		width:100%;
		background-color:#f5f5f5;
	}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark">
	<a class="navbar-brand" href="<?= base_url()?>"><img src="<?= base_url('assets/img/kc logo.png')?>" height="90" width="90"></a>
		<h1 style="color:white;font-size:30px;text-align: center;">K.C. College of Engineering & Management Studies & Research <br>(NAAC Accredited with B++ Grade)</h1>
		<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarsupport">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarsupport">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<a href="<?= base_url('login/logout_stu')?>" class="nav-link">Logout</a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
		