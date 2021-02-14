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

							<div class="ui stacked segment">
								<div class="ui blue ribbon icon label">DETAIL PELAMAR</div>
								<br><br>
								<table>
									<tr>
										<td>Nama Lengkap</td>
										<td> : </td>
										<td><?= $detail_pelamar->nama_pelamar ?></td>
									</tr>
									<tr>
										<td>L/P</td>
										<td> : </td>
										<td><?= $detail_pelamar->jenis_kelamin ?></td>
									</tr>
									<tr>
										<td>Tempat, Tanggal Lahir</td>
										<td> : </td>
										<td><?= $detail_pelamar->tempat_lahir ?>, <?= $detail_pelamar->tanggal_lahir ?></td>
									</tr>
									<tr>
										<?php 
						        			switch ($detail_pelamar->status_menikah) {
						        				case '1':
						    	    				$status_menikah = 'Kawin';
						        					break;			        				
						        				default:
						    	    				$status_menikah = 'Belum Kawin';
						        					break;
						        			}
										?>
										<td>Status Menikah</td>
										<td> : </td>
										<td><?= $status_menikah ?></td>
									</tr>
									<tr>
										<?php 
						        			switch ($detail_pelamar->agama) {
						        				case '1':
						    	    				$agama = 'Islam';
						        					break;
						        				case '2':
						    	    				$agama = 'Katolik';
						        					break;
						        				case '3':
						    	    				$agama = 'Protestan';
						        					break;
						        				case '4':
						    	    				$agama = 'Hindu';
						        					break;			        				
						        				default:
						    	    				$agama = 'Budha';
						        					break;
						        			}
										?>
										<td>Agama</td>
										<td> : </td>
										<td><?= $agama ?></td>
									</tr>
									<tr>
										<td>Alamat</td>
										<td> : </td>
										<td><?= $detail_pelamar->alamat ?></td>
									</tr>
									<tr>
										<td>Kontak / Email</td>
										<td> : </td>
										<td><?= $detail_pelamar->no_hp ?> / <?= $detail_pelamar->email ?></td>
									</tr>
									<tr>
										<?php 
											switch ($detail_pelamar->status_pelamar) {
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
										<td>Status Pelamar</td>
										<td> : </td>
										<td><?= $status_pelamar ?></td>
									</tr>
									<tr>
										<td>Posisi / Divisi</td>
										<td> : </td>
										<td><?= $detail_pelamar->nama_posisi ?> / <?= $detail_pelamar->nama_divisi ?></td>
									</tr>
								</table>
							</div>
							<br><br>

							<table id="example" class="ui celled table responsive nowrap unstackable" style="width:100%">
							    <thead>
							        <tr>
							            <th>NO</th>
							            <th>NAMA TES</th>
							            <th>SKOR WAWANCARA</th>
							            <th>SKOR TES UJIAN</th>
							            <th>STATUS HASIL</th>
							            <th style="text-align: center;">AKSI</th>
							        </tr>
							    </thead>
							    <tbody>
							    	<?php
							    		$no = 1;
							    		foreach ($data_ujian_pelamar as $u) {
							    			switch ($u->status_hasil_tes) {
							    				case '1':
								    				$status_hasil_tes = '<a class="ui green label">LULUS</a>';
							    					break;
							    				case '2':
								    				$status_hasil_tes = '<a class="ui red label">TIDAK LULUS</a>';
							    					break;
							    				case '0':
								    				$status_hasil_tes = '<a class="ui yellow label">Menunggu</a>';
							    					break;
							    				
							    				default:
								    				$status_hasil_tes = '<a class="ui grey label"> - </a>';
							    					break;
							    			}

							    	?>
							    	<tr>
							    		<td class="center aligned"><?= $no++; ?></td>
							    		<td><?= $u->nama_tes ?></td>
							    		<td class="right aligned"><?= $u->skor_wawancara ?></td>
							    		<td class="right aligned"><?= $u->skor_tes ?></td>
							    		<td class="center aligned"><?= $status_hasil_tes ?></td>
							    		<td class="center aligned">
							    			<a class="mini ui teal button" href="<?= base_url("admin/ujites_perekrutan/form_nilai/".$u->tes_id."/".$detail_pelamar->pelamar_id."/".$rekrut_id) ?>"><i class="pencil icon"></i>Ubah</a>
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