<div class="heroholder">
	<div class="hero">
		<div class="ui centered grid">
			<div class="row">
				<div class="eight wide computer sixteen wide phone column center aligned">
					<div class="herotext">
						<div class="herotagline">PT JICO AGUNG</div>
						<div>Lowongan Pekerjaan</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="section-spacing"></div>
<div class="ui container centered grid">
	<div class="row">
		<div class="twelve wide computer column">
			<div class="ui grid">
				<div class="sixteen wide computer sixteen wide phone centered column">
					<?php foreach ($result as $r): ?>
					<div class="ui raised segment">
					    <div class="content">
					        <div class="ui container centered grid">
					        	<div class="row">
					        		<div class="six wide computer column">
										<img src="<?= base_url('assets/uploads/').$r->gambar_iklan; ?>" alt="" class="center-cropped">
					        		</div>
					        		<div class="ten wide computer column">
					        			<h3><?= $r->judul_iklan ?></h3>
					        			<p class="text-tanggal">Diperbarui <?= $r->tanggal_iklan ?></p>
					        			<div class="text-justify">
					        				<?= substr($r->deskripsi_iklan, 0, 150) ?>
					        			</div>
					        			<br>
					        			<a href="<?= base_url('home/detail/').$r->iklan_id; ?>" class="ui right floated primary button">Read More</a>
					        		</div>
					        	</div>
					        </div>
					    </div>
					</div>
					<?php endforeach ?>
				</div>
			</div>
		</div>
	</div>
</div>