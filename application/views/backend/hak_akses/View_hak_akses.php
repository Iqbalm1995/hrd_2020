<!-- BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> DATA HAK AKSES</h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
                        <!-- ALERT -->
                        <?php echo $this->session->userdata('message1') <> '' ? $this->session->userdata('message1') : ''; ?>
						<!-- <div class="ui positive message">
							<i class="close icon"></i>
							<div class="header">
								Great News!
							</div>
							<p>This example page shows DataTables integrated with this template.</p>
						</div> -->
						<h4></h4>
						<!-- BEGIN DATATABLE -->
						<div class="ui stacked segment">
							<div class="ui blue ribbon icon label">DATATABLE HAK AKSES</div>
							<br><br>
							<div class="ui clearing segment">
								<a href="<?php echo base_url('admin/hak_akses/tambah_hak_akses/'); ?>" class="ui right floated primary button"><i class="plus icon"></i>Tambah Hak Akses</a>
							</div>
							<br>
							<table id="example" class="ui celled table responsive nowrap unstackable" style="width:100%">
							    <thead>
							        <tr>
							            <th>#</th>
							            <th>Nama Akses</th>
							            <th>Deskripsi Akses</th>
							            <th>Status Akses</th>
							            <th>Aksi</th>
							        </tr>
							    </thead>
							    <tbody>
							    	<?php
							    		$no = 1;
							    		// jika data kosong
							    		if (empty($data_hak_akses)) { ?>	                                    
							    		<tr>
	                                        <td colspan = "5" class="warning center aligned">
	                                            <i class="attention icon"></i> Data Belum Ada
	                                        </td>
	                                    </tr>
							    	<?php }else{ 
							    		foreach ($data_hak_akses as $r) { 
							    		if ($r->status_akses == '0') {
							    			$status_akses = '<a class="ui red label">Tidak Aktif</a>';
							    		}else{
							    			$status_akses = '<a class="ui green label">Aktif</a>';
							    		}
							    		?>
								        <tr>
								            <td class="center aligned"><?= $no++; ?></td>
								            <td><?= $r->nama_akses; ?></td>
								            <td><?= $r->deskripsi_akses; ?></td>
								            <td class="center aligned"><?= $status_akses; ?></td>
								            <td class="center aligned">
								            	<?php 
								            		if ($r->akses_id == '1') {
								            			echo '-';
								            		}else{ ?>
									            	<a class="mini ui teal button" href="<?= base_url("admin/hak_akses/ubah_hak_akses/".$r->akses_id) ?>"><i class="pencil icon"></i>Ubah</a>
													<a class="mini ui red button" href="<?=  base_url("admin/hak_akses/hapus_hak_akses/".$r->akses_id) ?>"><i class="trash icon"></i>Hapus</a>
								            	<?php } ?>
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