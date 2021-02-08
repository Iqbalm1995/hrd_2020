<!-- BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="briefcase icon"></i> FORM <?= $title; ?></h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
						<form action="<?= $action; ?>" method="POST">
							<input type="hidden" name="save" value="<?= $save; ?>">
							<?php
								if (empty($result)) {
									$deskripsi	= "";
									$kapasitas	= "";
									$kembaliId	= $iklan_id?>
									<input type="hidden" name="iklan_id" value="<?= $iklan_id; ?>"><?php
								}else {
									foreach ($result as $r) {
										$deskripsi	= $r->deskripsi_rekrut;
										$kapasitas	= $r->kapasitas; 
										$kembaliId	= $r->iklan_id;
										$rekrutId 	= $r->rekrut_id;
										$iklanId 	= $r->iklan_id?>
										<input type="hidden" name="rekrut_id" value="<?= $rekrutId; ?>">
										<input type="hidden" name="iklan_id" value="<?= $iklanId; ?>"><?php
									}
								}
							?>
			                <div class="ui stacked segment">
			                    <div class="ui form">
		                            <div class="field">
                                        <label>PILIH POSISI</label>
                                        <select class="ui dropdown" id="selek" name="pos_id">
        									<?php
        									if (empty($result)) { ?>
        										<option value="">&mdash; PILIH POSISI &mdash;</option> <?php
        										foreach ($posisi as $p) { ?>
        											<option value="<?= $p->pos_id; ?>">POSISI <?= $p->nama_posisi; ?> / DIVISI <?= $p->nama_divisi; ?></option>
        										<?php }
        									}else{
        										foreach ($result as $p) { ?>
        											<option value="<?= $p->pos_id; ?>">POSISI <?= $p->nama_posisi; ?> / DIVISI <?= $p->nama_divisi; ?></option>
        										<?php }
        									} ?>
                                        </select>
                                        <script>
                                        	$('#selek').dropdown();
                                        </script>
                                    </div>
                                    <div class="field">
		                                <label>JUMLAH LOWONGAN</label>
		                                <input type="number" placeholder="" name="kapasitas" value="<?= $kapasitas ?>" required>
		                            </div>
		                            <div class="field">
		                                <label>DESKRIPSI</label>
		                                <textarea name="deskripsi_rekrut"><?= $deskripsi ?></textarea>
		                            </div>
			                    </div>
			                    <br>
			                    <button class="ui blue button">
			                        <i class="save icon"></i>
			                        SIMPAN
			                    </button>
			                    <a class="ui button" href="<?= $batal.$kembaliId ?>">
			                        <i class="cancel icon"></i>
			                        BATAL
			                    </a>
			                </div>
			            </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END CONTENT -->