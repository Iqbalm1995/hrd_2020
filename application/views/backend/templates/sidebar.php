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
								<img  class="imgrad" src="<?= base_url('/assets/'); ?>images/logo.png" alt="SimpleIU">
							</div>
							<div class="left menu">
								<div class="nav item">
									<strong class="navtext">SIM REKRUTMEN</strong>
								</div>
							</div>
							<div class="ui top pointing dropdown admindropdown link item right">
								<img class="imgrad" src="<?= base_url('/assets/'); ?>images/user.png" alt="">
								<span class="clear navtext"><strong>ACCOUNT</strong></span>
								<i class="dropdown icon navtext"></i>
								<div class="menu">
									<!-- <a href="<?= base_url('pengaturan'); ?>" class="item"><p><i class="settings icon"></i>Ganti Password</p></a> -->
									<a class="item" href="<?php echo base_url('admin/login/logout'); ?>"><p><i class="sign out alternate icon"></i>Logout</p></a>
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
								<img class="imgrad" src="<?= base_url('/assets/'); ?>images/logo.png">
							</div>
						</div>
					</div>
					</div>
				</div>
				<!-- end mobile and tablet only navbar -->
				<!-- END NAVBAR -->

				<!-- BEGIN SIDEBAR -->
				<!-- mobile and tablet only sidebar -->
				<div class="tablet mobile only row">
					<div id="mobiletabletsidebar" class="mobiletabletsidebar animate hidden">
						<div class="ui left fixed vertical menu scrollable">
							<div class="item" style="text-align: center;">
								<h3>SIM REKRUTMEN</h3>
							</div>
							<a class="item" href="<?= base_url('admin/dashboard'); ?>"><i class="dashboard icon"></i> DASHBOARD</a>
							<!-- Begin Simple Accordion -->
							<div class="ui accordion simpleaccordion item">
							    <div class="title titleaccordion item"><i class="dropdown icon"></i> MASTER DATA</div>
							    <div class="content contentaccordion">
							        <a class="item itemaccordion" href="<?= base_url('#'); ?>"><i class="th list icon"></i> Data A</a>
							        <a class="item itemaccordion" href="<?= base_url('#'); ?>"><i class="th list icon"></i> Data B</a>
							    </div>
							</div>
							<!-- End Simple Accordion -->
							<a class="item" href="<?= base_url('admin/table'); ?>"><i class="table icon"></i> TABLE EXAMPLE</a>
							<div class="item" id="hidemobiletabletsidebar">
								<button class="fluid ui button">
									Close
								</button>
							</div>
						</div>
					</div>
				</div>
				<!-- end mobile and tablet only sidebar -->
				<!-- computer only sidebar -->
				<div class="computer only row">
					<div class="left floated three wide computer column" id="computersidebar">
						<div class="ui vertical fluid menu scrollable" id="simplefluid">
							<div class="clearsidebar"></div>
							<div class="item">
								<img src="<?= base_url('/assets/'); ?>images/user.png" id="sidebar-image">
							</div>
							<a class="item" href="<?= base_url('admin/dashboard'); ?>"><i class="dashboard icon"></i> DASHBOARD</a>
							<!-- NEW MENU -->
							<div class="ui accordion simpleaccordion item">
							    <div class="title titleaccordion item"><i class="dropdown icon"></i> MASTER DATA</div>
							    <div class="content contentaccordion">
							        <a class="item itemaccordion" href="<?= base_url('admin/divisi'); ?>"><i class="th list icon"></i> DATA DIVISI</a>
							        <a class="item itemaccordion" href="<?= base_url('admin/posisi'); ?>"><i class="th list icon"></i> DATA POSISI</a>
							        <a class="item itemaccordion" href="<?= base_url('admin/divisi'); ?>"><i class="th list icon"></i> DATA KARYAWAN</a>
							        <a class="item itemaccordion" href="<?= base_url('admin/tes_ujian'); ?>"><i class="th list icon"></i> DATA TES UJIAN</a>
							    </div>
							</div>

							<a class="item" href="<?= base_url('admin/iklan_lowongan'); ?>"><i class="table icon"></i>IKLAN LOWONGAN</a>
							<a class="item" href="<?= base_url('admin/pelamar'); ?>"><i class="table icon"></i> DATA CALON KARYAWAN</a>
							<a class="item" href="<?= base_url('admin/ujites_perekrutan'); ?>"><i class="table icon"></i> PENILAIAN</a>
							<a class="item" href="<?= base_url('admin/ranking'); ?>"><i class="table icon"></i>RANGKING</a>

							<div class="ui accordion simpleaccordion item">
							    <div class="title titleaccordion item"><i class="dropdown icon"></i> PENGATURAN</div>
							    <div class="content contentaccordion">
							        <a class="item itemaccordion" href="<?= base_url('admin/pengguna'); ?>"><i class="th list icon"></i> PENGGUNA</a>
							        <a class="item itemaccordion" href="<?= base_url('admin/hak_akses'); ?>"><i class="th list icon"></i> HAK AKSES</a>
							    </div>
							</div>
							<!-- END NEW MENU -->


							<!-- Begin Simple Accordion -->
							<!-- End Simple Accordion -->
							<!-- <a class="item" href="<?= base_url('admin/table'); ?>"><i class="table icon"></i> TABLE EXAMPLE</a> -->
							<a class="item"></a>
						</div>
					</div>
				</div>
				<!-- end computer only sidebar -->
				<!-- END SIDEBAR -->
			</div>
		</div>