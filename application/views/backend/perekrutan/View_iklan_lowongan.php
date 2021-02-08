BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> DATA IKLAN LOWONGAN</h2>
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
							<div class="ui blue ribbon icon label">DATATABLE IKLAN LOWONGAN</div>
							<br><br>
							<div class="ui clearing segment">
								<a href="<?php echo base_url('admin/iklan_lowongan/tambah_iklan_lowongan/'); ?>" class="ui right floated primary button"><i class="plus icon"></i>Tambah Iklan</a>
							</div>
							<br>
							<table id="example" class="ui celled table responsive nowrap unstackable" style="width:100%">
							    <thead>
							        <tr>
							            <th>#</th>
							            <th>Judul Iklan</th>
							            <th>Tanggal Iklan</th>
							            <th>Batas Waktu Iklan</th>
							            <th>Status</th>
							            <th>Aksi</th>
							        </tr>
							    </thead>
							    <tbody>
							    	<?php
							    		$no = 1;
							    		// jika data kosong
							    		if (empty($iklan_lowongan)) { ?>	                                    
							    		<tr>
	                                        <td colspan = "6" class="warning center aligned">
	                                            <i class="attention icon"></i> Data Belum Ada
	                                        </td>
	                                    </tr>
							    	<?php }else{ 
							    		foreach ($iklan_lowongan as $r) { 

							    		switch ($r->status_iklan) {
							    			case '1':
							    				$status_iklan = '<a class="ui green label">Buka</a>';
							    				break;
							    			case '2':
							    				$status_iklan = '<a class="ui red label">Tutup</a>';
							    				break;
							    			case '3':
							    				$status_iklan = '<a class="ui grey label">Luar Batas Waktu</a>';
							    				break;
							    			case '4':
							    				$status_iklan = '<a class="ui blue label">Publikasi</a>';
							    				break;
							    			
							    			default:
							    				$status_iklan = '<a class="ui orange label">Draft</a>';
							    				break;
							    		}

							    		?>
								        <tr>
								            <td class="center aligned"><?= $no++; ?></td>
								            <td><?= $r->judul_iklan; ?></td>
								            <td><?= $r->tanggal_iklan; ?></td>
								            <td><?= $r->batas_waktu; ?></td>
								            <td class="center aligned"><?= $status_iklan; ?></td>
								            <td class="center aligned">
								            	<div class="mini ui labeled button" tabindex="0">
												    <a class="mini ui olive button" href="<?= base_url("admin/iklan_lowongan/detail_iklan_lowongan/".$r->iklan_id) ?>">
												        <i class="bars icon"></i>Detail Lowogan
												    </a>
												    <a class="mini ui basic left pointing label">
												        <?= $r->jml_lowongan; ?> Lowogan
												    </a>
												</div>
								            	<!-- <a class="mini ui teal button" href="<?= base_url("admin/iklan_lowongan/ubah_iklan_lowongan/".$r->iklan_id) ?>"><i class="pencil icon"></i>Ubah</a>
												<a class="mini ui red button" href="<?=  base_url("admin/iklan_lowongan/hapus_iklan_lowongan/".$r->iklan_id) ?>"><i class="trash icon"></i>Hapus</a> -->
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
		<!-- END CONTENT