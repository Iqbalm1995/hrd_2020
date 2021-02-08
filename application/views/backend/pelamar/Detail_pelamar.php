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
								<!-- <?php foreach ($show as $sh) { ?>
								<a href="<?= $urltambah.$sh->id; ?>" class="ui blue right floated button">
									<i class="plus icon"></i>BUAT PENGADAAN BARANG INI
								</a>
								<?php } ?> -->
								<a href="<?= $urlback; ?>" class="ui right floated button">
									<i class="arrow left icon"></i>KEMBALI
								</a>
								<div class="ui blue ribbon icon label">TABEL DATA PELAMAR</div>
								<br><br>
								<table class="ui celled table">
									<thead>
										<tr>
											<th style="text-align: center;">POSISI YANG DILAMAR</th>
											<th style="text-align: center;">DIVISI</th>
											<th style="text-align: center;">IKLAN</th>
											<th style="text-align: center;">STATUS PELAMAR</th>
											<th style="text-align: center;">AKSI</th>
										</tr>
									</thead>
									<?php
					    			switch ($detail->status_pelamar) {
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
									<tbody>
										<tr>
											<td><?= $detail->nama_posisi ?></td>
											<td><?= $detail->nama_divisi ?></td>
											<td><?= $detail->judul_iklan ?></td>
											<td style="text-align: center;"><?= $status_pelamar ?></td>
											<td style="text-align: center;">
								    	    	<div class="ui buttons">
								    	    	  <a onclick="lulus(<?= $detail->pelamar_id ?>)" class="ui green button">LULUS</a>
								    	    	  <div class="or" data-text="/"></div>
								    	    	  <a onclick="tolak(<?= $detail->pelamar_id ?>)" class="ui red button">TOLAK</a>
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
							            <th>NAMA</th>
							            <th>GENDER</th>
							            <th>TTL</th>
							            <th>STATUS</th>
							            <th>AGAMA</th>
							            <th>ALAMAT</th>
							            <th>KONTAK</th>
							            <th style="text-align: center;">FILE</th>
							        </tr>
							    </thead>
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
							    ?>
							    <tbody>
							    	<tr>
							    		<td><?= $detail->nama_pelamar ?></td>
							    		<td><?= $detail->jenis_kelamin ?></td>
							    		<td><?= $detail->tempat_lahir ?> / <?= $detail->tanggal_lahir ?></td>
							    		<td><?= $status_menikah ?></td>
							    		<td><?= $agama ?></td>
							    		<td><?= $detail->alamat ?></td>
							    		<td><?= $detail->no_hp ?> / <?= $detail->email?></td>
							    		<td>
							    			<div class="ui buttons">
												<a href="#" class="ui blue button">KTP</a>
												<div class="or" data-text="/"></div>
												<a href="#" class="ui teal button">FOTO</a>
												<div class="or" data-text="/"></div>
												<a href="#" class="ui violet button">CV</a>
												<div class="or" data-text="/"></div>
												<a href="#" class="ui purple button">PORTFOLIO</a>
												<div class="or" data-text="/"></div>
												<a href="#" class="ui green button">SERTIFIKAT</a>
								    	   	</div>
								    	</td>
							    	</tr>
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
function lulus(pelamar_id) {
	console.log('OK BOS');
	console.log(pelamar_id);
	$('body').toast({
	    message: '<strong>YAKIN LULUSKAN ?</strong>',
	    displayTime: 3000,
	    position: 'top center',
	    classActions: 'center',
	    classContent: 'center',
	    actions: [{
	        text: 'LULUSKAN',
	        icon: 'checkmark',
	        class: 'green',
	        click: function() {
	        	$.ajax({
	        	    url : "<?= $lulus; ?>"+pelamar_id,
	        	    type: "GET",
	        	    dataType: "JSON"
	        	});
	            $('body').toast({
	                message: 'KANDIDAT BERHASIL DILULUSKAN !',
	                showProgress: 'bottom',
	                class: 'olive'
	            });
	            async function redirect(){
	            	await new Promise(resolve => setTimeout(resolve, 3000));
	            	document.location = "<?= base_url('/admin/pelamar/detail_pelamar/')?>"+pelamar_id;
	            }
	            redirect();
	        }
	    }, {
	        text: 'BATAL',
	        icon: 'close'
	    }]
	});
}

function tolak(pelamar_id) {
	console.log('OK BOS');
	console.log(pelamar_id);
	$('body').toast({
	    message: '<strong>YAKIN TOLAK ?</strong>',
	    displayTime: 3000,
	    position: 'top center',
	    classActions: 'center',
	    classContent: 'center',
	    actions: [{
	        text: 'TOLAK',
	        icon: 'close',
	        class: 'red',
	        click: function() {
	        	$.ajax({
	        	    url : "<?= $tolak; ?>"+pelamar_id,
	        	    type: "GET",
	        	    dataType: "JSON"
	        	});
	            $('body').toast({
	                message: 'KANDIDAT BERHASIL DITOLAK !',
	                showProgress: 'bottom',
	                class: 'olive'
	            });
	            async function redirect(){
	            	await new Promise(resolve => setTimeout(resolve, 3000));
	            	document.location = "<?= base_url('/admin/pelamar/detail_pelamar/')?>"+pelamar_id;
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