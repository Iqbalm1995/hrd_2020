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
								<a href="<?= $urltambah ?>" class="ui blue right floated button">
									<i class="plus icon"></i>TAMBAH LOWONGAN
								</a>
								<a href="<?= $urlback; ?>" class="ui right floated button">
									<i class="arrow left icon"></i>KEMBALI
								</a>
								<div class="ui blue ribbon icon label">TABEL DATA IKLAN</div>
								<br><br>
								<table class="ui celled table">
									<thead>
										<tr>
											<th>NAMA IKLAN</th>
											<th>DESKRIPSI IKLAN</th>
											<th>STATUS IKLAN</th>
											<th>TANGGAL DIBUKA</th>
											<th>TANGGAL DITUTUP</th>
											<th style="text-align: center;">AKSI</th>
										</tr>
									</thead>
									<tbody>
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
										<tr>
											<td><?= $detail->judul_iklan; ?></td>
								    	    <td><?= $detail->deskripsi_iklan; ?></td>
								    	    <td><?= $status_iklan; ?></td>
								    	    <td><?= $detail->tanggal_iklan; ?></td>
								    	    <td><?= $detail->batas_waktu; ?></td>
								    	    <td style="text-align: center;">
								    	    	<div class="ui buttons">
								    	    	  <a class="ui green button"><i class="thumbs up icon"></i></a>
								    	    	  <div class="or" data-text="/"></div>
								    	    	  <a class="ui red button"><i class="thumbs down icon"></i></a>
								    	    	  <div class="or" data-text="/"></div>
								    	    	  <a class="ui gray button"><i class="times icon"></i></a>
								    	    	  <div class="or" data-text="/"></div>
								    	    	  <a class="ui blue button"><i class="paper plane icon"></i></a>
								    	    	</div>
								    	    </td>
										</tr>
									</tbody>
								</table>
								<br>
								<div class="ui blue right ribbon icon label"><?= $title; ?></div>
								<br><br><br>
							</div>
							<table id="example" class="ui celled table responsive nowrap unstackable" style="width:100%">
							    <thead>
							        <tr>
							            <th>NO</th>
							            <th>NAMA POSISI</th>
							            <th>NAMA DIVISI</th>
							            <th>DESKRIPSI PEREKRUTAN</th>
							            <th style="text-align: center;">STATUS PEREKRUTAN</th>
							            <th>KAPASITAS</th>
							            <th>TERISI</th>
							            <th style="text-align: center;">AKSI</th>
							        </tr>
							    </thead>
							    <tbody>
						    	<?php $no=1; foreach ($result as $r) {
									switch ($r->status_rekrut) {
						    			case '0':
						    				$status_rekrut = '<a class="ui green label">Open</a>';
						    				break;
						    			case '2':
						    				$status_rekrut = '<a class="ui red label">Full</a>';
						    				break;
						    			default:
						    				$status_rekrut = '<a class="ui black label">Closed</a>';
						    				break;
						    		}
						    	?>
						    		<tr>
							    	    <td><?= $no++; ?></td>
							    	    <td><?= $r->nama_posisi; ?></td>
							    	    <td><?= $r->nama_divisi; ?></td>
							    	    <td><?= $r->deskripsi_rekrut; ?></td>
							    	    <td style="text-align: center;"><?= $status_rekrut; ?></td>
							    	    <td><?= $r->kapasitas; ?></td>
							    	    <td><?= $r->terisi; ?></td>
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