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
								<a href="<?= $urlback; ?>" class="ui right floated button">
									<i class="arrow left icon"></i>KEMBALI
								</a>
								<?php echo $this->session->userdata('message1') <> '' ? $this->session->userdata('message1') : ''; ?>	
		                        <!-- MAIN CONTENT -->
		                        <form action="<?php echo $url_proses; ?>" method="post" enctype="multipart/form-data">
		                            <div class="ui segment">
		                                <div class="ui form">
											<input type="hidden" name="aksi" value="<?php echo $aksi; ?>">
                                    		<input type="hidden" name="karyawan_id" value="<?php echo $karyawan_id; ?>">
		                                    <div class="field">
		                                        <label>Posisi Divisi</label>
		                                        <select name="pos_id" required>
		                                            <option value="">Pilih Poisi Divisi Karyawan</option>
		                                            <?php
		                                                if (!empty($data_posisi)) { 
		                                                    foreach ($data_posisi as $ha) { ?>
		                                                        <option value="<?= $ha->pos_id ?>" <?= ( $ha->pos_id == $pos_id ? 'selected' : '' ); ?>><?= $ha->nama_posisi ?> (<?= $ha->nama_divisi ?>)</option>
		                                            <?php } } ?>
		                                        </select>
		                                    </div>
		                                    <div class="field">
											<label>NAMA LENGKAP</label>
												<input type="text" name="nama_karyawan" value="<?php echo $nama_karyawan; ?>" required>
											</div>
											<div class="field">
		                                        <label>JENIS KELAMIN</label>
		                                        <select class="ui dropdown" id="jk" name="jenis_kelamin" required>
		                                            <option value="L" <?= ( $jenis_kelamin == 'L' ? 'selected' : '' ); ?>>Laki - Laki</option>
		                                            <option value="P" <?= ( $jenis_kelamin == 'P' ? 'selected' : '' ); ?>>Perempuan</option>
		                                        </select>
		                                        <script>
		                                            $('#jk').dropdown();
		                                        </script>
		                                    </div>
											<div class="field">
				                                <label>TANGGAL LAHIR</label>
				                                <div class="ui calendar" id="dob">
				                                	<div class="ui input left icon">
				                                		<i class="calendar icon"></i>
				                                		<input type="text" name="tanggal_lahir" placeholder="" value="<?php echo $tanggal_lahir; ?>" required>
				                                	</div>
				                                	<script>
				                                		$('#dob').calendar({type: 'date'});
				                                	</script>
				                                </div>
				                            </div>
											<div class="field">
												<label>TEMPAT LAHIR</label>
												<input type="text" name="tempat_lahir" value="<?php echo $tempat_lahir; ?>" required>
											</div>
											<div class="field">
		                                        <label>STATUS KAWIN</label>
		                                        <select class="ui dropdown" id="kawin" name="status_menikah" required>
		                                            <option value="1" <?= ( $status_menikah == '1' ? 'selected' : '' ); ?>>Kawin</option>
		                                            <option value="0" <?= ( $status_menikah == '0' ? 'selected' : '' ); ?>>Belum Kawin</option>
		                                        </select>
		                                        <script>
		                                            $('#kawin').dropdown();
		                                        </script>
		                                    </div>
		                                    <div class="field">
		                                        <label>AGAMA</label>
		                                        <select class="ui dropdown" id="agama" name="agama" required>
		                                            <option value="1" <?= ( $agama == '1' ? 'selected' : '' ); ?>>Islam</option>
		                                            <option value="2" <?= ( $agama == '2' ? 'selected' : '' ); ?>>Katolik</option>
		                                            <option value="3" <?= ( $agama == '3' ? 'selected' : '' ); ?>>Protestan</option>
		                                            <option value="4" <?= ( $agama == '4' ? 'selected' : '' ); ?>>Hindu</option>
		                                            <option value="5" <?= ( $agama == '5' ? 'selected' : '' ); ?>>Budha</option>
		                                        </select>
		                                        <script>
		                                            $('#agama').dropdown();
		                                        </script>
		                                    </div>
		                                    <div class="field">
												<label>ALAMAT</label>
												<textarea name="alamat" id="" rows="5"><?php echo $alamat; ?></textarea>
											</div>
											<div class="field">
												<label>NOMOR TELPON / HP</label>
												<input type="text" name="no_hp" value="<?php echo $no_hp; ?>" required>
											</div>
											<div class="field">
												<label>EMAIL</label>
												<input type="email" name="email" value="<?php echo $email; ?>" required>
											</div>
											<div class="field">
		                                        <label>STATUS KARYAWAN</label>
		                                        <select class="ui dropdown" id="sk" name="status_karyawan" required>
		                                            <option value="1" <?= ( $status_karyawan == '1' ? 'selected' : '' ); ?>>AKTIF</option>
		                                            <option value="0" <?= ( $status_karyawan == '0' ? 'selected' : '' ); ?>>TIDAK AKTIF</option>
		                                        </select>
		                                        <script>
		                                            $('#sk').dropdown();
		                                        </script>
		                                    </div>


		                                </div>
	                                	<br>
	                                	<button type="submit" class="ui primary button"><i class="save icon"></i>SIMPAN</button>
	                                	<a class="ui button" href="<?= $urlback; ?>"><i class="cancel icon"></i>BATAL</a>
	                           		 </div>
	                        	</form>

							</div>

						</div>
						<!-- END DATATABLE -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>