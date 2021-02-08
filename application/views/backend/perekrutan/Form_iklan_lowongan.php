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
                                    <input type="hidden" name="status_iklan" value="<?php echo $status_iklan; ?>">
                                    <div class="field">
                                        <label>Judul Iklan</label>
                                        <input type="text" name="judul_iklan" placeholder="Isi Judul Iklan..." value="<?php echo $judul_iklan; ?>" required>
                                    </div>
                                    <div class="field">
                                        <label>Deskripsi</label>
                                        <textarea rows="4" name="deskripsi_iklan" placeholder="Isi Deskripsi..."><?php echo $deskripsi_iklan; ?></textarea>
                                    </div>
                                    <div class="field">
                                        <label>Tanggal Buka Iklan Lowongan</label>
                                        <div class="ui calendar" id="tanggal_iklan">
                                            <div class="ui input left icon">
                                                <i class="calendar icon"></i>
                                                <input type="text" name="tanggal_iklan" value="<?php echo $tanggal_iklan; ?>">
                                            </div>
                                            <script>
                                                $('#tanggal_iklan').calendar({type: 'datetime'});
                                            </script>
                                        </div>
                                    </div>
                                    <div class="field">
                                        <label>Tanggal Batas Waktu Iklan Lowongan</label>
                                        <div class="ui calendar" id="batas_waktu">
                                            <div class="ui input left icon">
                                                <i class="calendar icon"></i>
                                                <input type="text" name="batas_waktu" value="<?php echo $batas_waktu; ?>">
                                            </div>
                                            <script>
                                                $('#batas_waktu').calendar({type: 'datetime'});
                                            </script>
                                        </div>
                                    </div>
                                    <div class="field">
                                        <label class="ui button" for="opsional">
                                            Upload Gambar Iklan
                                        </label>
                                        <input type="file" class="inputfile" name="gambar_iklan" id="opsional" />
                                    </div>

                                </div>
                                <br>
                                <button type="submit" class="ui primary button"><i class="save icon"></i>SIMPAN</button>
                                <a class="ui button" href="<?php echo base_url('admin/iklan_lowongan/'); ?>"><i class="cancel icon"></i>BATAL</a>
                            </div>
                        </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END CONTENT