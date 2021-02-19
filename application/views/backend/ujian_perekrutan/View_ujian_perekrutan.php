<!-- BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> DATA PENILAIAN CALON KARYAWAN</h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
                        <!-- ALERT -->
                        <?php echo $this->session->userdata('message1') <> '' ? $this->session->userdata('message1') : ''; ?>
						<h4></h4>
						<!-- BEGIN DATATABLE -->
						<div class="ui stacked segment">
							<div class="ui blue ribbon icon label">DATATABLE PENILAIAN CALON KARYAWAN</div>
							<br><br>
							<form action="<?php echo base_url('admin/pelamar/filter_pelamar/'); ?>" method="post" enctype="multipart/form-data">
	                            <div class="ui segment">
	                                <div class="ui form">
	                                	<div class="fields">
		                                	<!-- <div class="three wide field">
										      	<label>Filter Tanggal Iklan</label>
										      	<div class="ui calendar" id="tanggal_iklan_filter">
		                                            <div class="ui input left icon">
		                                                <i class="calendar icon"></i>
		                                                <input type="text" name="tanggal_iklan_filter" placeholder="Tanggal Iklan...">
		                                            </div>
		                                            <script>
		                                                $('#tanggal_iklan_filter').calendar({type: 'date'});
		                                            </script>
		                                        </div>
										    </div> -->
										    <div class="four wide field">
										      <label>Filter Posisi Divisi</label>
										      <select name="pos_id_filter">
	                                            <option value="all">- Semua Posisi -</option>
	                                            <?php
	                                                if (!empty($data_posisi)) { 
	                                                    foreach ($data_posisi as $pos) { ?>
	                                                        <option value="<?= $pos->pos_id ?>" <?= ( $pos->pos_id == $pos_id_filter ? 'selected' : '' ); ?> ><?= $pos->nama_posisi ?> (<?= $pos->nama_divisi ?>)</option>
	                                            <?php } } ?>
	                                        	</select>
										    </div>
		                                	<div class="three wide field">
										      	<label>Filter Judul Iklan</label>
										      	<input type="text" name="judul_iklan" placeholder="Judul Iklan..." value="<?php echo $judul_iklan; ?>">
										    </div>
										    <div class="three wide field">
										      <label>Filter Status Kandidat</label>
										      <select name="status_pelamar_filter">
	                                            <option value="all">- Semua Status -</option>
	                                            <option value="0">Buka</option>
	                                            <option value="1">Tutup</option>
	                                            <option value="2">Penuh</option>
	                                          </select>
	                                        </div>
										    <div class="three wide field">
										    	<label>&nbsp;</label>
										    	<button type="submit" class="ui primary button">FILTER</button>
											</div>
										</div>
	                                </div>
	                            </div>
	                        </form>
							<br>
							<table id="example" class="ui celled table responsive nowrap unstackable" style="width:100%">
							    <thead>
							        <tr>
							            <th>#</th>
							            <th>Posisi</th>
							            <th>Iklan Lowongan</th>
							            <th>Kapasitas</th>
							            <th>Terisi</th>
							            <th>Status</th>
							            <th>Aksi</th>
							        </tr>
							    </thead>
							    <tbody>
							    	<?php
							    		$no = 1;
							    		// jika data kosong
							    		if (empty($rekrut_pelamar)) { ?>	                                    
							    		<tr>
	                                        <td colspan = "7" class="warning center aligned">
	                                            <i class="attention icon"></i> Data Belum Ada
	                                        </td>
	                                    </tr>
							    	<?php }else{ 
							    		foreach ($rekrut_pelamar as $r) { 
						    			switch ($r->status_rekrut) {
						    				case '1':
							    				$status_rekrut = '<a class="ui black label">TUTUP</a>';
						    					break;
						    				case '2':
							    				$status_rekrut = '<a class="ui red label">PENUH</a>';
						    					break;
						    				
						    				default:
							    				$status_rekrut = '<a class="ui green label">BUKA</a>';
						    					break;
						    			}
							    		?>
								        <tr>
								            <td class="center aligned"><?= $no++; ?></td>
								            <td><?= $r->nama_posisi.' ('.$r->nama_divisi.')'; ?></td>
								            <td><?= $r->judul_iklan; ?></td>
								            <td class="center aligned"><?= $r->kapasitas; ?></td>
								            <td class="center aligned"><?= $r->terisi; ?></td>
								            <td class="center aligned"><?= $status_rekrut; ?></td>
								            <td class="center aligned">
									            <a class="mini ui teal button" href="<?= base_url("admin/ujites_perekrutan/detail_ujites/".$r->rekrut_id) ?>"><i class="bars icon"></i>Detail Perekrutan</a>
								            </td>
								        </tr>
							    	<?php } /*end foreach*/ } /*end if*/ ?>
							        
							                
								</tbody>
							</table>

						</div>
						<!-- END DATATABLE -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
		<!-- END CONTENT -->