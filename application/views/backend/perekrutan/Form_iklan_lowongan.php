<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> <?= strtoupper($aksi); ?> IKLAN LOWONGAN</h2>
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
                                    <input type="hidden" name="iklan_id" value="<?php echo $iklan_id; ?>">
                                    <div class="field">
                                        <label>Judul Iklan</label>
                                        <input type="text" name="judul_iklan" placeholder="Isi Judul Iklan..." value="<?php echo $judul_iklan; ?>" required>
                                    </div>
                                    <div class="field">
                                        <label>Deskripsi</label>
                                        <textarea rows="4" name="deskripsi_iklan" placeholder="Isi Deskripsi..."><?php echo $deskripsi_iklan; ?></textarea>
                                    </div>


                                    <div class="field">
                                        <label>Status</label>
                                        <select name="status_pengguna" required>
                                            <option value="1" <?= ( $status_pengguna == '1' ? 'selected' : '' ); ?>>Aktif</option>
                                            <option value="0" <?= ( $status_pengguna == '0' ? 'selected' : '' ); ?>>Tidak Aktif</option>
                                        </select>
                                    </div>
                                </div>
                                <br>
                                <button type="submit" class="ui primary button"><i class="save icon"></i>SIMPAN</button>
                                <a class="ui button" href="<?php echo base_url('admin/pengguna/'); ?>"><i class="cancel icon"></i>BATAL</a>
                            </div>
                        </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END CONTENT