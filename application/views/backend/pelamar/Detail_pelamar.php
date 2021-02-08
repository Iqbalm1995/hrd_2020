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
						    				$status_pelamar = '<a class="ui green label">Lolos</a>';
					    					break;
					    				case '2':
						    				$status_pelamar = '<a class="ui red label">Tidak Lolos</a>';
					    					break;
					    				
					    				default:
						    				$status_pelamar = '<a class="ui blue label">Mendaftar</a>';
					    					break;
					    			}
									?>
									<tbody>
										<tr>
											<td><?= $detail->nama_posisi ?></td>
											<td><?= $detail->nama_divisi ?></td>
											<td><?= $detail->judul_iklan ?></td>
											<td style="text-align: center;"><?= $status_pelamar ?></td>
											<td style="text-align: center;"></td>
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
							            <th>STATUS MENIKAH</th>
							            <th>AGAMA</th>
							            <th>ALAMAT</th>
							            <th>KONTAK</th>
							            <th style="text-align: center;">FILE</th>
							        </tr>
							    </thead>
							    <tbody>
							    	<!-- <?php $no=1; foreach ($result as $r) { ?>
							    		<tr>
								    	    <td><?= $no++; ?></td>
								    	    <td><?= $r->tglpengadaan; ?></td>
								    	    <td><?= $r->jumlahpermintaan; ?></td>
								    	    <td><?= 'Rp. '.$r->totalharga; ?></td>
								    	    <?php if ($r->status == 0): ?>
								    	    	<td>
								    	    		<div class="ui black label">
								    	    			<i class="clock icon"></i>
								    	    			MENUNGGU PERSETUJUAN
								    	    		</div>
								    	    	</td>
								    	    <?php endif ?>
								    	    <?php if ($r->status == 1): ?>
								    	    	<td>
								    	    		<div class="ui green label">
									    	    		<i class="checkmark icon"></i>
									    	    		DISETUJUI
									    	    	</div>
								    	    	</td>
								    	    <?php endif ?>
								    	    <?php if ($r->status == 2): ?>
								    	    	<td>
								    	    		<div class="ui red label">
									    	    		<i class="times icon"></i>
									    	    		DITOLAK
									    	    	</div>
								    	    	</td>
								    	    <?php endif ?>
								    	    <td><?= $r->keterangan ?></td>
								    	    <?php foreach ($show as $sh) { ?>
								    	    <td style="text-align: center;">
								    	    	<div class="ui buttons">
								    	    	  <a onclick="setuju(<?= $r->id.','.$sh->id ?>)" class="ui green button"><i class="checkmark icon"></i></a>
								    	    	  <div class="or" data-text="/"></div>
								    	    	  <a onclick="tolak(<?= $r->id.','.$sh->id ?>)" class="ui red button"><i class="times icon"></i></a>
								    	    	</div>
								    	    </td>
								    	    <?php } ?>
								    	</tr>
							    	<?php } ?> -->
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
function setuju(id,redirectId) {
	console.log('OK BOS');
	console.log(id);
	$('body').toast({
	    message: '<strong>YAKIN SETUJUI ?</strong>',
	    displayTime: 3000,
	    position: 'top center',
	    classActions: 'center',
	    classContent: 'center',
	    actions: [{
	        text: 'SETUJUI',
	        icon: 'checkmark',
	        class: 'green',
	        click: function() {
	        	$.ajax({
	        	    url : "<?= $setuju; ?>"+id,
	        	    type: "GET",
	        	    dataType: "JSON"
	        	});
	            $('body').toast({
	                message: 'PENGADAAN BERHASIL DISETUJUI !',
	                showProgress: 'bottom',
	                class: 'olive'
	            });
	            async function redirect(){
	            	await new Promise(resolve => setTimeout(resolve, 3000));
	            	document.location = "<?= base_url('pengadaan/show/')?>"+redirectId;
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