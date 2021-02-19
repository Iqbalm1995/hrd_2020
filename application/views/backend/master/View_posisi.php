<!-- BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> DATA POSISI DIVISI</h2>
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
							<div class="">
								<a href="<?php echo base_url('admin/posisi/tambah_posisi/'); ?>" class="ui right floated primary button"><i class="plus icon"></i>Tambah Posisi</a>
								<div class="ui blue ribbon icon label">DATATABLE POSISI DIVISI</div>
								<br><br><br>
							</div>
							<br>
							<table id="example" class="ui celled table responsive nowrap unstackable" style="width:100%">
							    <thead>
							        <tr>
							            <th>#</th>
							            <th>Nama Posisi</th>
							            <th>Divisi</th>
							            <th>Deskripsi</th>
							            <th>Status</th>
							            <th>Aksi</th>
							        </tr>
							    </thead>
							    <tbody>
							    	<?php
							    		$no = 1;
							    		// jika data kosong
							    		if (empty($data_posisi)) { ?>	                                    
							    		<tr>
	                                        <td colspan = "6" class="warning center aligned">
	                                            <i class="attention icon"></i> Data Belum Ada
	                                        </td>
	                                    </tr>
							    	<?php }else{ 
							    		foreach ($data_posisi as $r) { 
							    		if ($r->status_posisi == '0') {
							    			$status_posisi = '<a class="ui red label">Tidak Aktif</a>';
							    		}else{
							    			$status_posisi = '<a class="ui green label">Aktif</a>';
							    		}
							    		?>
								        <tr>
								            <td class="center aligned"><?= $no++; ?></td>
								            <td><?= $r->nama_posisi; ?></td>
								            <td><?= $r->nama_divisi; ?></td>
								            <td><?= $r->deskripsi_posisi; ?></td>
								            <td class="center aligned"><?= $status_posisi; ?></td>
								            <td class="center aligned">
								            	<a class="mini ui teal button" href="<?= base_url("admin/posisi/ubah_posisi/".$r->pos_id) ?>"><i class="pencil icon"></i>Ubah</a>
												<a class="mini ui red button" href="<?=  base_url("admin/posisi/hapus_posisi/".$r->pos_id) ?>"><i class="trash icon"></i>Hapus</a>
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