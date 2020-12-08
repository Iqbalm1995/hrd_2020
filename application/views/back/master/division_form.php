<!-- BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> <?= strtoupper($aksi); ?> DIVISI</h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
						<?php echo $this->session->userdata('message1') <> '' ? $this->session->userdata('message1') : ''; ?>	
                        <!-- MAIN CONTENT -->
                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                            <div class="ui segment">
                                <div class="ui form">
                                    <!-- BEGIN TYPE TEXT -->
                                    <input type="hidden" name="id" value="<?php echo $id; ?>">
                                    <div class="field">
                                        <label>Nama Divisi</label>
                                        <input type="text" name="div_name" placeholder="Isi Nama Divisi..." value="<?php echo $div_name; ?>" required>
                                    </div>
                                    <!-- END TYPE TEXT -->

                                    <!-- BEGIN TYPE TEXT AREA -->
                                    <div class="field">
                                        <label>Keterangan</label>
                                        <textarea rows="2" name="desc" placeholder="Isi Keterangan..."><?php echo $desc; ?></textarea>
                                    </div>
                                    <!-- END TYPE TEXT AREA -->
                                </div>
                                <br>
                                <button type="submit" class="ui primary button"><i class="save icon"></i>SIMPAN</button>
                                <a class="ui button" href="<?php echo base_url('admin/divisions'); ?>"><i class="cancel icon"></i>BATAL</a>
                            </div>
                        </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END CONTENT -->