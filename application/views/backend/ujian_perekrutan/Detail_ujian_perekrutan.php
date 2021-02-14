<!-- BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="th list icon"></i><?= $title; ?></h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
						<?php echo $this->session->userdata('message1') <> '' ? $this->session->userdata('message1') : ''; ?>

						<div class="ui stacked segment">
							<div class="">
								<a href="<?= base_url('admin/ujites_perekrutan'); ?>" class="ui right floated button">
									<i class="arrow left icon"></i>KEMBALI
								</a>
								<div class="ui blue ribbon icon label">TABEL DATA LOWONGAN</div>
								<br><br>
								<table class="ui celled table">
									<thead>
										<tr>
											<th style="text-align: center;">POSISI YANG DILAMAR</th>
											<th style="text-align: center;">DIVISI</th>
											<th style="text-align: center;">IKLAN</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><?= $detail_rekrut->nama_posisi ?></td>
											<td><?= $detail_rekrut->nama_divisi ?></td>
											<td><?= $detail_rekrut->judul_iklan ?></td>
										</tr>
									</tbody>
								</table>
								<br>
								<div class="ui blue right ribbon icon label"><?= $title; ?></div>
								<br><br><br>
							</div>

							<table id="example" class="ui celled table responsive nowrap unstackable" style="width:100%">
							    <thead>
							        <tr>
							            <th>NO</th>
							            <th>NAMA</th>
							            <th>L/P</th>
							            <th>TTL</th>
							            <th>KONTAK</th>
							            <th>STATUS</th>
							            <th style="text-align: center;">AKSI</th>
							        </tr>
							    </thead>
							    <tbody>
							    	<?php 
							    	$no = 1;
							    	foreach ($list_pelamar_rekrut as $pr) {

						    			switch ($pr->status_pelamar) {
						    				case '1':
							    				$status_pelamar = '<a class="ui green label">LULUS</a>';
						    					break;
						    				case '2':
							    				$status_pelamar = '<a class="ui red label">TIDAK LULUS</a>';
						    					break;
						    				
						    				default:
							    				$status_pelamar = '<a class="ui blue label">MENDAFTAR</a>';
						    					break;
						    			}

							    	?>

							    	<tr>
							    		<td class="center aligned"><?= $no++; ?></td>
							    		<td><?= $pr->nama_pelamar ?></td>
							    		<td class="center aligned"><?= $pr->jenis_kelamin ?></td>
							    		<td><?= $pr->tempat_lahir ?> / <?= $pr->tanggal_lahir ?></td>
							    		<td><small><?= $pr->no_hp ?> / <?= $pr->email?></small></td>
							    		<td class="center aligned"><?= $status_pelamar ?></td>
							    		<td class="center aligned">
									        <a class="mini ui teal button" href="<?= base_url("admin/ujites_perekrutan/rekrut_ujites/".$detail_rekrut->rekrut_id."/".$pr->pelamar_id) ?>"><i class="bars icon"></i>Detail Ujian</a>
								    	</td>
							    	</tr>
							    	<?php } ?>
							    </tbody>
							</table>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>