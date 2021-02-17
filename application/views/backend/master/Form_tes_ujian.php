<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> <?= strtoupper($aksi); ?> TES UJIAN</h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
						<?php echo $this->session->userdata('message1') <> '' ? $this->session->userdata('message1') : ''; ?>	
                        <!-- MAIN CONTENT -->
                        <form action="<?php echo $url_proses; ?>" method="post" enctype="multipart/form-data">
                            <div class="ui segment">
                                <div class="ui form">
                                    <!-- <div class="ui divider"></div> -->
                                    <input type="hidden" name="aksi" value="<?php echo $aksi; ?>">
                                    <input type="hidden" name="tes_id" value="<?php echo $tes_id; ?>">
                                    <div class="field">
                                        <label>Nama Tes</label>
                                        <input type="text" name="nama_tes" placeholder="Isi Nama Tes..." value="<?php echo $nama_tes; ?>" required>
                                    </div>
                                    <div class="field">
                                        <label>Bobot Tes</label>
                                        <input type="number" name="bobot_tes" placeholder="0" value="<?php echo $bobot_tes; ?>" required>
                                    </div>
                                    <div class="field">
                                        <label>Jenis</label>
                                        <select name="jenis_tes" required>
                                            <option value="1" <?= ( $jenis_tes == '1' ? 'selected' : '' ); ?>>Cost</option>
                                            <option value="0" <?= ( $jenis_tes == '0' ? 'selected' : '' ); ?>>Benefit</option>
                                        </select>
                                    </div>
                                    <div class="field">
                                        <label>Deskripsi</label>
                                        <textarea rows="3" name="deskripsi_tes" placeholder="Isi Deskripsi..."><?php echo $deskripsi_tes; ?></textarea>
                                    </div>
                                    <div class="field">
                                        <label>Status</label>
                                        <select name="status_tes" required>
                                            <option value="1" <?= ( $status_tes == '1' ? 'selected' : '' ); ?>>Aktif</option>
                                            <option value="0" <?= ( $status_tes == '0' ? 'selected' : '' ); ?>>Tidak Aktif</option>
                                        </select>
                                    </div>
                                </div>
                                <br>
                                <button type="submit" class="ui primary button"><i class="save icon"></i>SIMPAN</button>
                                <a class="ui button" href="<?php echo base_url('admin/tes_ujian/'); ?>"><i class="cancel icon"></i>BATAL</a>
                            </div>
                        </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END CONTENT