<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> <?= strtoupper($aksi); ?> HAK AKSES</h2>
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
                                    <input type="hidden" name="akses_id" value="<?php echo $akses_id; ?>">
                                    <div class="field">
                                        <label>Nama Akses</label>
                                        <input type="text" name="nama_akses" placeholder="Isi Nama Akses..." value="<?php echo $nama_akses; ?>" required>
                                    </div>
                                    <div class="field">
                                        <label>Deskripsi</label>
                                        <textarea rows="3" name="deskripsi_akses" placeholder="Isi Deskripsi..."><?php echo $deskripsi_akses; ?></textarea>
                                    </div>
                                    <div class="field">
                                        <label>Status</label>
                                        <select name="status_akses" required>
                                            <option value="1" <?= ( $status_akses == '1' ? 'selected' : '' ); ?>>Aktif</option>
                                            <option value="0" <?= ( $status_akses == '0' ? 'selected' : '' ); ?>>Tidak Aktif</option>
                                        </select>
                                    </div>
                                </div>
                                <br>
                                <button type="submit" class="ui primary button"><i class="save icon"></i>SIMPAN</button>
                                <a class="ui button" href="<?php echo base_url('admin/hak_akses/'); ?>"><i class="cancel icon"></i>BATAL</a>
                            </div>
                        </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END CONTENT