<!-- BEGIN CONTEN -->
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
						<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                            <div class="ui segment">
                                <div class="ui form">
									
									<input type="hidden" name="id" value="<?php echo $id; ?>">
									
									<div class="field">
										<div class="two fields">
											<div class="field">
												<label>Nama Lengkap</label>
												<input type="text" name="name" placeholder="Isi Nama Lengkap..." value="<?php echo $name; ?>" required>
											</div>
											<div class="field">
												<label>Username</label>
												<input type="text" name="username" placeholder="Isi Username..." value="<?php echo $username; ?>" required>
											</div>
										</div>
									</div>

									<div class="field">
                                        <label>E-mail Pengguna</label>
                                        <input type="email" name="email" placeholder="Isi E-mail Pengguna..." value="<?php echo $email; ?>" required>
                                    </div>

									<div class="field">
                                        <label>Role / Hak Akses</label>
                                        <select class="ui dropdown" id="selek_role" name="role_id" required>
											<?php if(!empty($dataRoles)){ 
												foreach ($dataRoles as $r) { ?>
													<option value="<?= $r->id ?>" <?= ( $role_id == $r->id ? 'selected' : '');?>><?= $r->role_name ?></option>
											<?php } }else{ ?>
												<option value="">- Role / Hak Akses Belum Ada -</option>
											<?php }; ?>
                                        </select>
                                        <script>
                                            $('#selek_role').dropdown();
                                        </script>
									</div>

                                    <div class="field">
                                        <label>Status Pengguna</label>
                                        <select class="ui dropdown" id="selek_status" name="status" required>
                                            <option value="1" <?= ( $status == '1' ? 'selected' : '');?>>Aktif</option>
                                            <option value="0" <?= ( $status == '0' ? 'selected' : '');?>>Non Aktif</option>
                                        </select>
                                        <script>
                                            $('#selek_status').dropdown();
                                        </script>
									</div>
									<br>
									<label>Set Password</label>
									<div class="ui divider"></div>
									<div class="field">
										<label>Password Baru <?= ( $aksi == 'ubah' ? '<i>(Opsional, Jangan diisi jika tidak diubah.)</i>' : '');?> </label>
										<div class="ui input left icon">
											<i class="key icon"></i>
											<input type="password" name="password" placeholder="Isi Password..." <?= ( $aksi == 'tambah' ? 'required' : '');?>>
										</div>
									</div>
                                </div>
                                <br>
                                <button type="submit" class="ui primary button"><i class="save icon"></i>SIMPAN</button>
                                <a class="ui button" href="<?php echo base_url('admin/user_admin'); ?>"><i class="cancel icon"></i>BATAL</a>
                            </div>
                        </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END CONTENT -->