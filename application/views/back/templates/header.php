<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="initial-scale=1, minimum-scale=1, width=device-width" name="viewport">
	<meta name="robots" content="all,follow">
	<title>SIM Rekrutmen &mdash; Administrator </title>
	<link rel="icon" href="<?= base_url('assets/') ?>images/logo.png" sizes="32x32">
	<!-- inject:css -->
  	<link rel="stylesheet" href="<?= base_url('assets/') ?>vendors/fomantic-ui/semantic.min.css">
  	<link rel="stylesheet" href="<?= base_url('assets/') ?>css/main.css">
  	<!-- endinject -->
  	<!-- chartjs:css -->
	<link rel="stylesheet" href="<?= base_url('assets/') ?>vendors/chart.js/Chart.min.css">
	<!-- endinject -->
	
	<!-- inject:js -->
	<script src="<?= base_url('assets/') ?>vendors/jquery/jquery.min.js"></script>
	<script src="<?= base_url('assets/') ?>vendors/fomantic-ui/semantic.min.js"></script>
	<script src="<?= base_url('assets/') ?>js/main.js"></script>
	<!-- endinject -->

	<!-- datatables:js -->
	<script src="<?= base_url('assets/') ?>vendors/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="<?= base_url('assets/') ?>vendors/datatables.net/datatables.net-se/js/dataTables.semanticui.min.js"></script>
	<script src="<?= base_url('assets/') ?>vendors/datatables.net/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script src="<?= base_url('assets/') ?>vendors/datatables.net/datatables.net-responsive-se/js/responsive.semanticui.min.js"></script>
	<script src="<?= base_url('assets/') ?>vendors/datatables.net/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script src="<?= base_url('assets/') ?>vendors/datatables.net/datatables.net-buttons/js/buttons.colVis.min.js"></script>
	<script src="<?= base_url('assets/') ?>vendors/datatables.net/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script src="<?= base_url('assets/') ?>vendors/datatables.net/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script src="<?= base_url('assets/') ?>vendors/datatables.net/datatables.net-buttons-se/js/buttons.semanticui.min.js"></script>
	<script src="<?= base_url('assets/') ?>vendors/jszip/jszip.min.js"></script>
	<script src="<?= base_url('assets/') ?>vendors/pdfmake/pdfmake.min.js"></script>
	<script src="<?= base_url('assets/') ?>vendors/pdfmake/vfs_fonts.js"></script>
	<!-- endinject -->
</head>
<body>
	<div class="ui grid">
		<div class="row">
			<div class="ui grid">
				<!-- BEGIN NAVBAR -->
				<!-- computer only navbar -->
				<div class="computer only row">
					<div class="column">
						<div class="ui top fixed menu navcolor">
							<div class="item">
								<img src="<?= base_url('assets/') ?>images/logo.png" alt="SimpleIU">
							</div>
							<div class="left menu">
								<div class="nav item">
									<strong class="navtext">SIM REKRUTMEN</strong>
								</div>
							</div>
							<div class="ui top pointing dropdown admindropdown link item right">
								<img class="imgrad" src="<?= base_url('assets/') ?>images/user.png" alt="">
								<span class="clear navtext"><strong>Administrator</strong></span>
								<i class="dropdown icon navtext"></i>
								<div class="menu">
									<div class="item"><p><i class="settings icon"></i>Account Setting</p></div>
									<div class="item"><p><i class="sign out alternate icon"></i>Logout</p></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end computer only navbar -->
				<!-- mobile and tablet only navbar -->
				<div class="tablet mobile only row">
					<div class="column">
				    <div class="ui top fixed menu navcolor">
						<a id="showmobiletabletsidebar" class="item navtext"><i class="content icon"></i></a>
						<div class="right menu">
							<div class="item">
								<strong class="navtext">SIM REKRUTMEN</strong>
							</div>
							<div class="item">
								<img src="<?= base_url('assets/') ?>images/logo.png">
							</div>
						</div>
					</div>
					</div>
				</div>
				<!-- end mobile and tablet only navbar -->
				<!-- END NAVBAR -->