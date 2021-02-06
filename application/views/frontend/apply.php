	<div class="section-spacing"></div><br><br>
	<div class="ui container centered grid">
		<div class="row">
			<div class="twelve wide computer column">
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
						<div class="ui raised segment">
						    <div class="content">
						    	<h2 class="text-center">FORM APPLY - SENIOR WEB DEVELOPER</h2>
						    	<div class="section-spacing"></div>
						    	<form action="#" method="POST">
							    	<div class="ui form">
										<div class="field">
											<label>NAMA LENGKAP</label>
											<input type="text">
										</div>
										<div class="field">
	                                        <label>JENIS KELAMIN</label>
	                                        <select class="ui dropdown" id="jk" name="jenis_kelamin" required>
	                                            <option value="1">Laki - Laki</option>
	                                            <option value="2">Perempuan</option>
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
			                                		<input type="text" name="dob" placeholder="" value="" required>
			                                	</div>
			                                	<script>
			                                		$('#dob').calendar({type: 'date'});
			                                	</script>
			                                </div>
			                            </div>
										<div class="field">
											<label>TEMPAT LAHIR</label>
											<input type="text">
										</div>
										<div class="field">
	                                        <label>STATUS KAWIN</label>
	                                        <select class="ui dropdown" id="kawin" name="jenis_kelamin" required>
	                                            <option value="1">Kawin</option>
	                                            <option value="2">Belum Kawin</option>
	                                        </select>
	                                        <script>
	                                            $('#kawin').dropdown();
	                                        </script>
	                                    </div>
	                                    <div class="field">
	                                        <label>AGAMA</label>
	                                        <select class="ui dropdown" id="agama" name="agama" required>
	                                            <option value="1">Islam</option>
	                                            <option value="2">Katolik</option>
	                                            <option value="3">Protestan</option>
	                                            <option value="4">Hindu</option>
	                                            <option value="5">Budha</option>
	                                        </select>
	                                        <script>
	                                            $('#agama').dropdown();
	                                        </script>
	                                    </div>
	                                    <div class="field">
											<label>ALAMAT</label>
											<textarea name="" id="" rows="5"></textarea>
										</div>
										<div class="field">
											<label>NOMOR TELPON / HP</label>
											<input type="number">
										</div>
										<div class="field">
											<label>EMAIL</label>
											<input type="email">
										</div>
										<div class="field">
											<label class="ui button" for="ktp">
												UPLOAD KTP
											</label>
											<input type="file" class="inputfile" id="ktp" />
										</div>
										<div class="field">
											<label class="ui button" for="foto">
												UPLOAD FOTO DIRI
											</label>
											<input type="file" class="inputfile" id="foto" />
										</div>
										<div class="field">
											<label class="ui button" for="cv">
												UPLOAD CV
											</label>
											<input type="file" class="inputfile" id="cv" />
										</div>
										<div class="field">
											<label class="ui button" for="portfolio">
												UPLOAD PORFTOLIO
											</label>
											<input type="file" class="inputfile" id="portfolio" />
										</div>
										<div class="field">
											<label class="ui button" for="opsional">
												UPLOAD SERTIFIKAT (OPSIONAL)
											</label>
											<input type="file" class="inputfile" id="opsional" />
										</div>
									</div>
									<br><br>
									<a onclick="submit()" class="ui blue button">
				                        <i class="save icon"></i>
				                        SIMPAN
				                    </a>
								</form>	
						    </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
function submit() {
	$('body').toast({
	    message: '<strong>YAKIN APPLY ?</strong>',
	    displayTime: 3000,
	    position: 'top center',
	    classActions: 'center',
	    classContent: 'center',
	    actions: [{
	        text: 'KIRIM',
	        icon: 'save',
	        class: 'blue',
	        click: function() {
	        	$.ajax({
	        	    url : '',
	        	    type: "GET",
	        	    dataType: "JSON"
	        	});
	            $('body').toast({
	                message: 'DATA BERHASIL DIKIRIM !',
	                showProgress: 'bottom',
	                class: 'olive'
	            });
	            async function redirect(){
	            	await new Promise(resolve => setTimeout(resolve, 3000));
	            	document.location = "<?= base_url('home/apply')?>";
	            }
	            redirect();
	        }
	    }, {
	        text: 'BATAL',
	        icon: 'close'
	    }]
	});
}
</script>