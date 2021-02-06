<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> <?= strtoupper($aksi); ?> PENGGUNA</h2>
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
                                    <input type="hidden" name="pengguna_id" value="<?php echo $pengguna_id; ?>">
                                    <div class="field">
                                        <label>Hak akses</label>
                                        <select name="akses_id" required>
                                            <option value="">Pilih Hak Akses</option>
                                            <?php
                                                if (!empty($data_hak_akses)) { 
                                                    foreach ($data_hak_akses as $ha) { ?>
                                                        <option value="<?= $ha->akses_id ?>" <?= ( $ha->akses_id == $akses_id ? 'selected' : '' ); ?>><?= $ha->nama_akses ?></option>
                                            <?php } } ?>
                                        </select>
                                    </div>
                                    <div class="field">
                                        <label>Nama Lengkap</label>
                                        <input type="text" name="nama_pengguna" placeholder="Isi Nama Lengkap..." value="<?php echo $nama_pengguna; ?>" required>
                                    </div>
                                    <div class="field">
                                        <label>Email</label>
                                        <input type="email" name="email" placeholder="Isi Email..." value="<?php echo $email; ?>" required>
                                    </div>
                                    <div class="field">
                                        <label>Username</label>
                                        <input type="text" name="username" placeholder="Isi Username..." value="<?php echo $username; ?>" required>
                                    </div>
                                    <div class="field">
                                        <label>Password</label>
                                        <input type="password" name="password" placeholder="Isi Password..." value="<?php echo $password; ?>" required>
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