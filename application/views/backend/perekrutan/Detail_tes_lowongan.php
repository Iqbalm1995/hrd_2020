<!-- BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> DATA TES UJIAN REKRUT</h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
                        <!-- ALERT -->
                        <?php echo $this->session->userdata('message1') <> '' ? $this->session->userdata('message1') : ''; ?>
						<h4></h4>
						<!-- BEGIN DATATABLE -->
						<div class="ui stacked segment">
							<div class="ui blue ribbon icon label">DATATABLE PELAMAR</div>
							<br><br>
							<form action="<?php echo base_url('admin/iklan_lowongan/tambah_tes_lowongan/'); ?>" method="post" enctype="multipart/form-data">
	                            <div class="ui segment">
	                                <div class="ui form">
	                                	<div class="fields">
	                                		<input type="hidden" name="iklan_id" value="<?php echo $data_rekrut_lowongan[0]->iklan_id; ?>">
                                    		<input type="hidden" name="rekrut_id" value="<?php echo $data_rekrut_lowongan[0]->rekrut_id; ?>">
										    <div class="four wide field">
										     	<label>Filter Posisi Divisi</label>
										      	<select name="tes_id" required>
	                                            <option value="">- Pilih Tes -</option>
	                                            <?php
	                                            	$data_id_tes_hold = array();
	                                                if (!empty($list_tes_ujian)) { 
	                                                	if (!empty($data_tes_perekrutan)) {
	                                                		foreach ($data_tes_perekrutan as $c1) {
	                                                			array_push($data_id_tes_hold, $c1->tes_id);
	                                                		}
	                                                	}

	                                                    foreach ($list_tes_ujian as $tes) { 
	                                                    	if (!in_array($tes->tes_id, $data_id_tes_hold)) { ?>
	                                                        <option value="<?= $tes->tes_id ?>"><?= $tes->nama_tes ?></option>
	                                                    <?php	} ?>
	                                            <?php } } ?>
	                                        	</select>
										    </div>
										    <div class="four wide field">
										    	<label>&nbsp;</label>
										    	<button type="submit" class="ui primary button"><i class="plus icon"></i>Tambahkan Tes Ujian</button>
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
							            <th>Nama Tes</th>
							            <th>Deskripsi</th>
							            <th>Aksi</th>
							        </tr>
							    </thead>
							    <tbody>
							    	<?php
							    		$no = 1;
							    		// jika data kosong
							    		if (empty($data_tes_perekrutan)) { ?>	                                    
							    		<tr>
	                                        <td colspan = "4" class="warning center aligned">
	                                            <i class="attention icon"></i> Data Belum Ada
	                                        </td>
	                                    </tr>
							    	<?php }else{ 
							    		foreach ($data_tes_perekrutan as $r) { 
							    		?>
								        <tr>
								            <td class="center aligned"><?= $no++; ?></td>
								            <td><?= $r->nama_tes; ?></td>
								            <td><?= $r->deskripsi_tes; ?></td>
								            <td class="center aligned">
									            <a class="mini ui red button" href="<?= base_url("admin/iklan_lowongan/hapus_tes_lowongan/".$data_rekrut_lowongan[0]->iklan_id."/".$data_rekrut_lowongan[0]->rekrut_id."/".$r->tes_id) ?>"><i class="trash icon"></i> Hapus</a>
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