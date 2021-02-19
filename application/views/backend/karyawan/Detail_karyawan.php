<!-- BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="th list icon"></i><?= $title; ?></h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
						<!-- BEGIN DATATABLE -->
						<div class="ui stacked segment">
							<div class="">
								<a href="<?= $urlback; ?>" class="ui right floated button">
									<i class="arrow left icon"></i>KEMBALI
								</a>
								<?php 
			        			switch ($detail->status_menikah) {
			        				case '1':
			    	    				$status_menikah = 'Kawin';
			        					break;			        				
			        				default:
			    	    				$status_menikah = 'Belum Kawin';
			        					break;
			        			}
			        			switch ($detail->agama) {
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
			        			switch ($detail->status_karyawan) {
				    				case '1':
					    				$status_karyawan = '<a class="ui blue label">AKTIF</a>';
				    					break;
				    				
				    				default:
					    				$status_karyawan = '<a class="ui red label">TIDAK AKTIF</a>';
				    					break;
				    			}
							    ?>
								<table>
									<tr>
										<td>Posisi / Divisi</td>
										<td>: </td>
										<td><?= $detail->nama_posisi ?> / <?= $detail->nama_divisi ?></td>
									</tr>
									<tr>
										<td>Nama Karyawan</td>
										<td>: </td>
										<td><?= $detail->nama_karyawan ?></td>
									</tr>
									<tr>
										<td>Jenis Kelamin</td>
										<td>: </td>
										<td><?= $detail->jenis_kelamin ?></td>
									</tr>
									<tr>
										<td>Tempat, Tanggal Lahir</td>
										<td>: </td>
										<td><?= $detail->tempat_lahir ?>, <?= $detail->tanggal_lahir ?></td>
									</tr>
									<tr>
										<td>Status Menikah</td>
										<td>: </td>
										<td><?= $status_menikah ?></td>
									</tr>
									<tr>
										<td>Agama</td>
										<td>: </td>
										<td><?= $agama ?></td>
									</tr>
									<tr>
										<td>Alamat</td>
										<td>: </td>
										<td><?= $detail->alamat ?></td>
									</tr>
									<tr>
										<td>Kontak</td>
										<td>: </td>
										<td><?= $detail->no_hp ?></td>
									</tr>
									<tr>
										<td>Email</td>
										<td>: </td>
										<td><?= $detail->email ?></td>
									</tr>
									<tr>
										<td>Status Karyawan</td>
										<td>: </td>
										<td><?= $status_karyawan ?></td>
									</tr>
								</table>

							</div>

						</div>
						<!-- END DATATABLE -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>