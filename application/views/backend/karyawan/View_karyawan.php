<!-- BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> DATA DATA KARYAWAN</h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
                        <!-- ALERT -->
                        <?php echo $this->session->userdata('message1') <> '' ? $this->session->userdata('message1') : ''; ?>
						<h4></h4>
						<!-- BEGIN DATATABLE -->
						<div class="ui stacked segment">
							<div class="ui blue ribbon icon label">DATATABLE DATA KARYAWAN</div>
							<br><br>
							<div class="ui clearing segment">
								<a href="<?php echo base_url('admin/karyawan/tambah_karyawan/'); ?>" class="ui right floated primary button"><i class="plus icon"></i>Tambah Karyawan</a>
							</div>
							<br>
							<form action="<?php echo base_url('admin/karyawan/filter_karyawan/'); ?>" method="post" enctype="multipart/form-data">
	                            <div class="ui segment">
	                                <div class="ui form">
	                                	<div class="fields">
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
										      	<label>Filter Nama Karyawan</label>
										      	<input type="text" name="nama_karyawan_filter" placeholder="Nama Karyawan..." value="<?php echo $nama_karyawan_filter; ?>">
										    </div>
										    <div class="three wide field">
										      <label>Filter Status Karyawan</label>
										      <select name="status_karyawan_filter">
	                                            <option value="all">- Semua Status -</option>
	                                            <option value="1">Aktif</option>
	                                            <option value="0">Tidak Aktif</option>
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
							            <th>Nama Karyawan</th>
							            <th>L/P</th>
							            <th>TTL</th>
							            <th>Kontak</th>
							            <th>Posisi/Divisi</th>
							            <th>Status</th>
							            <th>Aksi</th>
							        </tr>
							    </thead>
							    <tbody>
							    	<?php
							    		$no = 1;
							    		// jika data kosong
							    		if (empty($data_karyawan)) { ?>	                                    
							    		<tr>
	                                        <td colspan = "8" class="warning center aligned">
	                                            <i class="attention icon"></i> Data Belum Ada
	                                        </td>
	                                    </tr>
							    	<?php }else{ 
							    		foreach ($data_karyawan as $r) { 
						    			switch ($r->status_karyawan) {
						    				case '1':
							    				$status_karyawan = '<a class="ui blue label">AKTIF</a>';
						    					break;
						    				
						    				default:
							    				$status_karyawan = '<a class="ui red label">TIDAK AKTIF</a>';
						    					break;
						    			}
							    		?>
								        <tr>
								            <td class="center aligned"><?= $no++; ?></td>
								            <td><?= $r->nama_karyawan; ?></td>
								            <td class="center aligned"><?= $r->jenis_kelamin; ?></td>
								            <td><?= $r->tempat_lahir.', '.$r->tanggal_lahir; ?></td>
								            <td><?= $r->no_hp; ?></td>
								            <td><?= $r->nama_posisi.' ('.$r->nama_divisi.')'; ?></td>
								            <td class="center aligned"><?= $status_karyawan; ?></td>
								            <td class="center aligned">
								            	<a class="mini ui icon teal button" href="<?= base_url("admin/karyawan/ubah_karyawan/".$r->karyawan_id) ?>"><i class="pencil icon"></i></a>
								            	<a class="mini ui icon red button" href="<?= base_url("admin/karyawan/hapus_karyawan/".$r->karyawan_id) ?>"><i class="trash icon"></i></a>
									            <a class="mini ui icon blue button" href="<?= base_url("admin/karyawan/detail_karyawan/".$r->karyawan_id) ?>"><i class="bars icon"></i></a>
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