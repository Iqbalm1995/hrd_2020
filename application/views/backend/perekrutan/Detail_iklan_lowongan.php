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
						<!-- BEGIN DATATABLE -->
						<div class="ui stacked segment">
							<div class="">
								<?php 
								switch ($detail->status_iklan) {
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

								<div class="ui clearing segment">
									<div class="ui items">
									  <div class="item">
									    <div class="image">
									      <img src="<?= base_url().'/assets/uploads/'.$detail->gambar_iklan; ?>">
									    </div>
									    <div class="content">
									      <a class="header"><?= $detail->judul_iklan; ?></a>
									      <div class="meta">
									        <span>Status : <?= $status_iklan; ?> | Waktu : <?= $detail->tanggal_iklan; ?> s/d <?= $detail->batas_waktu; ?></span>
									      </div>
									      <div class="description">
									        <p><?= $detail->deskripsi_iklan; ?></p>
									      </div>
									      <div class="extra">
									      	Update Status Posting <br>
									        <div class="ui buttons">
							    	    	  <a class="ui green button" href="<?= base_url('admin/iklan_lowongan/ubah_status_iklan/'.$detail->iklan_id.'/1') ?>">Buka Lowongan</i></a>
							    	    	  <div class="or" data-text="/"></div>
							    	    	  <a class="ui red button" href="<?= base_url('admin/iklan_lowongan/ubah_status_iklan/'.$detail->iklan_id.'/2') ?>">Tutup Lowongan</i></a>
							    	    	  <div class="or" data-text="/"></div>
							    	    	  <a class="ui gray button" href="<?= base_url('admin/iklan_lowongan/ubah_status_iklan/'.$detail->iklan_id.'/3') ?>">Luar Batas Waktu</a>
							    	    	  <div class="or" data-text="/"></div>
							    	    	  <a class="ui blue button" href="<?= base_url('admin/iklan_lowongan/ubah_status_iklan/'.$detail->iklan_id.'/4') ?>">Publikasi</a>
							    	    	</div>
											<a href="<?= base_url('admin/iklan_lowongan/hapus_iklan_lowongan/'.$detail->iklan_id) ?>" class="ui red right floated button">
												<i class="trash icon"></i>
											</a>
											<a href="<?= base_url('admin/iklan_lowongan/ubah_iklan_lowongan/'.$detail->iklan_id) ?>" class="ui teal right floated button">
												<i class="pencil icon"></i>UBAH IKLAN
											</a>
									      </div>
									    </div>
									  </div>
									</div>
								</div>

								<div class="ui divider"></div>
								
								<div class="ui clearing segment">
									<a href="<?= $urltambah ?>" class="ui blue right floated button">
										<i class="plus icon"></i>TAMBAH LOWONGAN
									</a>
									<a href="<?= $urlback; ?>" class="ui right floated button">
										<i class="arrow left icon"></i>KEMBALI
									</a>
								</div>
								<div class="ui blue right ribbon icon label"><?= $title; ?></div>
							</div>
							<br>
							<table id="example" class="ui celled table responsive nowrap unstackable" style="width:100%">
							    <thead>
							        <tr>
							            <th>NO</th>
							            <th>NAMA POSISI</th>
							            <th>NAMA DIVISI</th>
							            <th>KAPASITAS</th>
							            <th>TERISI</th>
							            <th style="text-align: center;">STATUS</th>
							            <th style="text-align: center;">TES UJI</th>
							            <th style="text-align: center;">AKSI</th>
							        </tr>
							    </thead>
							    <tbody>
						    	<?php $no=1; foreach ($result as $r) {
									switch ($r->status_rekrut) {
						    			case '0':
						    				$status_rekrut = '<a class="ui green label">Buka</a>';
						    				break;
						    			case '2':
						    				$status_rekrut = '<a class="ui red label">Penuh</a>';
						    				break;
						    			default:
						    				$status_rekrut = '<a class="ui black label">Tutup</a>';
						    				break;
						    		}
						    	?>
						    		<tr>
							    	    <td style="text-align: center;"><?= $no++; ?></td>
							    	    <td><?= $r->nama_posisi; ?></td>
							    	    <td><?= $r->nama_divisi; ?></td>
							    	    <td style="text-align: center;"><?= $r->kapasitas; ?></td>
							    	    <td style="text-align: center;"><?= $r->terisi; ?></td>
							    	    <td style="text-align: center;"><?= $status_rekrut; ?></td>
							    	    <td style="text-align: center;">
							    	    	<div class="mini ui labeled button" tabindex="0">
											    <a class="mini ui violet button" href="<?= base_url("admin/iklan_lowongan/tes_ujian_rekrut/".$detail->iklan_id."/".$r->rekrut_id) ?>">
											        <i class="bars icon"></i>Ujian
											    </a>
											    <a class="mini ui basic left pointing label">
											        <?= $r->jml_tes; ?> Tes
											    </a>
											</div>
							    	    </td>
							    	    <td style="text-align: center;">
							    	    	<div class="ui buttons">
							    	    	  <a href="<?= $urleditperiklan.$r->rekrut_id ?>" class="ui green button"><i class="pen icon"></i></a>
							    	    	  <div class="or" data-text="/"></div>
							    	    	  <a onclick="hapus(<?= $r->rekrut_id.','.$redirect;?>)" class="ui red button"><i class="trash icon"></i></a>
							    	    	</div>
							    	    </td>
							    	</tr>
						    	<?php } ?>
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
<script>
function hapus(rekrut_id,redirectId) {
	console.log('OK BOS');
	console.log(rekrut_id);
	$('body').toast({
	    message: '<strong>YAKIN HAPUS DATA ?</strong>',
	    displayTime: 3000,
	    position: 'top center',
	    classActions: 'center',
	    classContent: 'center',
	    actions: [{
	        text: 'HAPUS',
	        icon: 'trash',
	        class: 'red',
	        click: function() {
	        	$.ajax({
	        	    url : "<?= $hapus; ?>"+rekrut_id,
	        	    type: "GET",
	        	    dataType: "JSON"
	        	});
	            $('body').toast({
	                message: 'DATA BERHASIL DIHAPUS !',
	                detailProgress: 'bottom',
	                class: 'olive'
	            });
	            async function redirect(){
	            	await new Promise(resolve => setTimeout(resolve, 3000));
	            	document.location = "<?= base_url('/admin/iklan_lowongan/detail_iklan_lowongan/')?>"+redirectId;
	            }
	            redirect();
	        }
	    }, {
	        text: 'BATAL',
	        icon: 'close'
	    }]
	});
}
</script>
<!-- END CONTENT -->