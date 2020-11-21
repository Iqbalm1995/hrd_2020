<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="initial-scale=1, minimum-scale=1, width=device-width" name="viewport">
	<meta name="robots" content="all,follow">
	<link rel="icon" href="<?= base_url('/') ?>assets/images/logo.png" sizes="32x32">
	<title>Lowongan Pekerjaan &mdash; PT Jico Agung</title>
	<link rel="stylesheet" href="<?= base_url('/') ?>assets/vendors/fomantic-ui/semantic.min.css">
</head>
<style>
	body{
		background-color: #EEE;
	}
	.footer{
		background-color: #1678C2;
		margin-top: 70px !important;
		color: #FFF;
		text-align: center;
	}
	.heroholder{
		display: table;
	   	width: 100%;
		height: 30%;
		margin-top: 3.5%;
		background-image: url('<?= base_url('/') ?>assets/images/hero.jpg');
		background-size: cover;
	    background-repeat: no-repeat;
	    background-position: center center;
	}
	.hero{
	   display: table-cell;
	   vertical-align: middle;
	   text-align: center;
	}
	.herotext{
		font-family: sans-serif;
		font-size: 25px;
		letter-spacing: 5px;
		text-shadow: 3px 3px 3px #000;
		line-height: 125%;
		color: #FFF;
	}
	.herotagline{
		font-size: 40px;
		letter-spacing: 5px;
		line-height: 50px;
	}
	.section-spacing{
		margin-top: 40px !important;
	}
	.card-title-loker{
		text-align: center !important;
	}
	.card-decs-loker{
		text-align: justify !important;
	}
	.card{
		height: 160px !important;
	}
	@media only screen and (max-width: 640px){
		.herotext{
			font-family: sans-serif;
			font-size: 20px;
			letter-spacing: 5px;
			text-shadow: 3px 3px 3px #000;
			line-height: 125%;
		}
		.herotagline{
			font-size: 30px;
			letter-spacing: 5px;
			line-height: 50px;
		}
		.heroholder{
			display: table;
			margin-top: 10%;
		}
	}
</style>
<body>
	<div class="ui grid">
		<div class="row">
			<div class="column">
				<div class="ui top fixed menu">
					<div class="item">
						<img src="<?= base_url('/') ?>assets/images/logo.png" alt="Logo">
					</div>
					<div class="left menu">
						<div class="nav item">
							<strong class="navtext">PT JICO AGUNG</strong>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>