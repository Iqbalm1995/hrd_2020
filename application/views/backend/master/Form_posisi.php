<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> <?= strtoupper($aksi); ?> POSISI DIVISI</h2>
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
                                    <input type="hidden" name="pos_id" value="<?php echo $pos_id; ?>">
                                    <div class="field">
                                        <label>Divisi</label>
                                        <select name="divisi_id" required>
                                            <option value="">Pilih Divisi</option>
                                            <?php
                                                if (!empty($data_divisi)) { 
                                                    foreach ($data_divisi as $div) { ?>
                                                        <option value="<?= $div->divisi_id ?>" <?= ( $div->divisi_id == $divisi_id ? 'selected' : '' ); ?>><?= $div->nama_divisi ?></option>
                                            <?php } } ?>
                                        </select>
                                    </div>
                                    <div class="field">
                                        <label>Nama Posisi</label>
                                        <input type="text" name="nama_posisi" placeholder="Isi Nama Posisi..." value="<?php echo $nama_posisi; ?>" required>
                                    </div>
                                    <div class="field">
                                        <label>Deskripsi</label>
                                        <textarea rows="3" name="deskripsi_posisi" placeholder="Isi Deskripsi..."><?php echo $deskripsi_posisi; ?></textarea>
                                    </div>
                                    <div class="field">
                                        <label>Status</label>
                                        <select name="status_posisi" required>
                                            <option value="1" <?= ( $status_posisi == '1' ? 'selected' : '' ); ?>>Aktif</option>
                                            <option value="0" <?= ( $status_posisi == '0' ? 'selected' : '' ); ?>>Tidak Aktif</option>
                                        </select>
                                    </div>
                                </div>
                                <br>
                                <button type="submit" class="ui primary button"><i class="save icon"></i>SIMPAN</button>
                                <a class="ui button" href="<?php echo base_url('admin/posisi/'); ?>"><i class="cancel icon"></i>BATAL</a>
                            </div>
                        </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END CONTENT