<!-- BEGIN CONTENT -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> PERANGKINGAN CALON KARYAWAN</h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
						<div class="ui stacked segment">
							<form class="ui form" method="POST" action="">
								<div class="fields">
									<div class="two wide field">
									</div>
									<div class="six wide field">
										<label for="">Filter Posisi Divisi (Posisi Yang Dilamar)</label>
										<select name="rekrut_id">
										   <option value="all">- Pilih Posisi -</option>
										   <?php foreach ($low as $lw): ?>
										   <option value="<?= $lw->rekrut_id ?>:<?= $lw->nama_lowongan ?>"><?= $lw->nama_lowongan ?></option>
										   <?php endforeach ?>
										</select>
									</div>
									<div class="six wide field">
								    	<label>&nbsp;</label>
								    	<button type="submit" style="width: 100%;" class="ui primary button"><i class="eye outline icon"></i> Lihat Data</button>
									</div>
								</div>
							</form>
						</div>
						<?php if (isset($_POST['rekrut_id'])): ?>
							<?php if ($_POST['rekrut_id'] != 'all'): ?>
							<!-- BEGIN DATATABLE -->
							<div class="ui stacked segment">
								<div class="ui blue ribbon icon label">TABEL DATA PELAMAR <?= $lowongan_nama ?></div>
								<br><br>
								<table id="example" class="ui celled table responsive nowrap unstackable" style="width:100%">
								    <thead>
								        <tr>
								        	<th>No</th>
								            <th>Nama Lengkap</th>
								            <th>Jenis Kelamin</th>
								            <th>Tanggal Lahir</th>
								        </tr>
								    </thead>
								    <tbody>
								    	<?php $no=1; foreach ($list as $li): ?>
								    	<tr>
								    	    <td><?= $no++; ?></td>
								    	    <td><?= $li->nama_pelamar; ?></td>
								    	    <td><?= $li->jenis_kelamin; ?></td>
								    	    <td><?= $li->tanggal_lahir; ?></td>
								    	</tr>
								    	<?php endforeach ?>
								    </tbody>
								</table>
								<br>
								<form action="" method="POST">
									<input type="hidden" name="do_rank">
									<input type="hidden" name="rank_rekrut_id" value="<?= $rekrut_id ?>">
									<button class="ui right floated primary button" type="submit"><i class="sync icon"></i> Hitung Rangking</button>
								</form>
								<br><br>
							</div>
							<!-- END DATATABLE -->
							<?php endif ?>
						<?php endif ?>
						<?php if (isset($_POST['do_rank'])): ?>
						<div class="ui stacked segment">
							<div class="ui blue ribbon icon label">TABEL DATA BOBOT TES</div>
							<br><br>
							<table id="example" class="ui celled table responsive nowrap unstackable" style="width:100%">
							    <thead>
							        <tr>
							        	<th style="text-align: center">No</th>
							            <th style="text-align: center">Nama Tes</th>
							            <th style="text-align: center">Jenis Tes</th>
							            <th style="text-align: center">Bobot</th>
							            <th style="text-align: center">(Bobot / Jumlah Bobot) * Cost atau Benefit</th>
							        </tr>
							    </thead>
							    <tbody>
							    	<?php $no=1; foreach ($listbobot as $lb): ?>
							    	<?php 
							    		if ($lb->jenis_tes == 0) {
							    			$jt = 'Benefit';
							    		}else{
							    			$jt = 'Cost';
							    		}
							    	?>
							    	<tr>
							    	    <td style="text-align: right;"><?= $no++; ?></td>
							    	    <td><?= $lb->nama_tes ?></td>
							    	    <td><?= $jt." (".$lb->jenis_tes.")" ?></td>
							    	    <td style="text-align: right;"><?= $lb->bobot_tes ?></td>
							    	    <td style="text-align: right;"><?= $lb->bobot_tes_baru ?></td>
							    	</tr>
							    	<?php endforeach ?>
							    </tbody>
							</table>
						</div>


						<div class="ui stacked segment">
							<div class="ui blue ribbon icon label">TABEL RANGKING</div>
							<br><br>
							<table id="example" class="ui celled table responsive nowrap unstackable" style="width:100%">
							    <thead>
							        <tr>
							        	<th style="text-align: center">Rangking</th>
							            <th style="text-align: center">Nama Pelamar</th>
							            <th style="text-align: center">Tanggal Lahir</th>
							            <th style="text-align: center">Vektor S</th>
							            <th style="text-align: center">Vektor V</th>
							            <th style="text-align: center">Aksi</th>
							        </tr>
							    </thead>
							    <tbody>
							    	<?php $rank=1; foreach ($ranking as $rk): ?>
							    	<tr>
							    	    <td style="text-align: right;"><?= $rank++; ?></td>
							    	    <td><?= $rk->nama_pelamar ?></td>
							    	    <td><?= $rk->tanggal_lahir ?></td>
							    	    <td style="text-align: right;"><?= $rk->vektor_s ?></td>
							    	    <td style="text-align: right;"><?= $rk->vektor_v ?></td>
							    	    <td style="text-align: center">
							    	    	<a target="_blank" class="mini ui teal button" href="<?= base_url('/admin/pelamar/detail_pelamar/').$rk->pelamar_id ?> "><i class="bars icon"></i>Detail Lamaran</a>
							    	    </td>
							    	</tr>
							    	<?php endforeach ?>
							    </tbody>
							</table>
						</div>

						<?php endif ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END CONTENT