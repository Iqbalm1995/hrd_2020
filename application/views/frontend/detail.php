	<div class="section-spacing"></div><br><br>
	<div class="ui container centered grid">
		<div class="row">
			<div class="twelve wide computer column">
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
						<div class="ui raised segment">
						    <div class="content">
						        <img src="<?= base_url('assets/uploads/').$result->gambar_iklan; ?>" class="center-cropped-detail">
						        <h2><?= $result->judul_iklan ?></h2>
						        <p class="text-tanggal">Diperbarui <?= $result->tanggal_iklan ?></p>
						        <div class="text-justify"><br>
						        	<?= $result->deskripsi_iklan ?>
						        </div>
						        <div class="ui divider"></div>
						        <table class="ui very basic table">
						        	<thead>
						        		<tr>
						        			<th class="five wide">NAMA POSISI</th>
						        			<th class="five wide">NAMA DIVISI</th>
						        			<th class="text-center" class="two wide">STATUS</th>
						        			<th class="text-center" class="four wide">AKSI</th>
						        		</tr>
						        	</thead>
						        	<tbody>
						        		<?php foreach ($list as $l):
						        			switch ($l->status_rekrut) {
								    			case '0':
								    				$status_rekrut = '<a class="ui green label">Open</a>';
								    				$statId = 0;
								    				break;
								    			case '2':
								    				$status_rekrut = '<a class="ui red label">Full</a>';
								    				$statId = 2;
								    				break;
								    			default:
								    				$status_rekrut = '<a class="ui black label">Closed</a>';
								    				$statId = 1;
								    				break;
								    		} ?>
						        		<tr>
						        			<td><?= $l->nama_posisi ?></td>
						        			<td><?= $l->nama_divisi ?></td>
						        			<td class="text-center"><?= $status_rekrut ?></td>
						        			<?php if ($statId != 0) { ?>
						        				<td class="text-center"><a class="ui disabled button">Apply</a></td>
						        			<?php }else{ ?>
						        				<td class="text-center"><a href="<?= base_url('home/apply/').$l->rekrut_id; ?>" class="ui primary button">Apply</a></td>
						        			<?php } ?>
						        		</tr>
						        		<?php endforeach ?>
						        	</tbody>
						        </table>
						    </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>