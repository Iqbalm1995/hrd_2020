<!-- BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="th list icon"></i><?= $title; ?></h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
						<?php echo $this->session->userdata('message1') <> '' ? $this->session->userdata('message1') : ''; ?>

						<div class="ui stacked segment">

							<div class="ui stacked segment">
								<div class="ui blue ribbon icon label">DETAIL TES UJIAN</div>
								<br><br>
								<table>
									<tr>
										<td>Nama Tes</td>
										<td> : </td>
										<td><?= $detail_tes_ujian->nama_tes ?></td>
									</tr>
									<tr>
										<td>Deskripsi</td>
										<td> : </td>
										<td><?= $detail_tes_ujian->deskripsi_tes ?></td>
									</tr>
								</table>
							</div>
							<br><br>

							<form action="<?php echo $config_form['url_proses']; ?>" method="post" enctype="multipart/form-data">
	                            <div class="ui segment">
									<div class="ui blue ribbon icon label">FORM NILAI TES UJIAN</div>
									<br><br>
	                                <div class="ui form">
	                                	<input type="hidden" name="aksi" value="<?php echo $config_form['aksi']; ?>">
                                   		<input type="hidden" name="tes_id" value="<?php echo $detail_tes_ujian->tes_id; ?>">
                                   		<input type="hidden" name="pelamar_id" value="<?php echo $pelamar_id; ?>">
                                   		<input type="hidden" name="rekrut_id" value="<?php echo $rekrut_id; ?>">
	                                    <div class="field">
	                                        <label>Skor Wawancara</label>
	                                        <input type="number" name="skor_wawancara" placeholder="0" value="<?php echo $config_form['skor_wawancara']; ?>" required>
	                                    </div>
	                                    <div class="field">
	                                        <label>Skor Tes</label>
	                                        <input type="number" name="skor_tes" placeholder="0" value="<?php echo $config_form['skor_tes']; ?>" required>
	                                    </div>
	                                    <div class="field">
	                                        <label>STATUS TES UJIAN</label>
	                                        <select name="status_hasil_tes" required>
	                                            <option value="0" <?= ( $config_form['status_hasil_tes'] == '0' ? 'selected' : '' ); ?>>Menunggu</option>
	                                            <option value="1" <?= ( $config_form['status_hasil_tes'] == '1' ? 'selected' : '' ); ?>>Lulus</option>
	                                            <option value="2" <?= ( $config_form['status_hasil_tes'] == '2' ? 'selected' : '' ); ?>>Tidak Lulus</option>
	                                        </select>
	                                    </div>

                                	</div>
                                	<br>
                                <button type="submit" class="ui primary button"><i class="save icon"></i>SIMPAN</button>
                                <a class="ui button" href="<?php echo base_url('admin/ujites_perekrutan/rekrut_ujites/'.$rekrut_id.'/'.$pelamar_id); ?>"><i class="cancel icon"></i>BATAL</a>
                            	</div>
                        	</form>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>