<!-- BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> PERANGKINGAN CALON KARYAWAN</h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
						<div class="ui stacked segment">
							<form class="ui form" method="post">
								<div class="fields">
									<div class="six wide field">
										<label for="">Filter Posisi Divisi (Posisi Yang Dilamar)</label>
										<select name="pos_id_filter">
										   <option value="all">- Pilih Posisi -</option>
										   <option value="3"  >IT Supervisor (IT)</option>
										</select>
									</div>
									<div class="three wide field">
								    	<label>&nbsp;</label>
								    	<button type="submit" style="width: 100%;" class="ui primary button">Proses Ranking</button>
									</div>
								</div>
							</form>
						</div>
						<!-- BEGIN DATATABLE -->
						<?php error_reporting(0); ?>
						<?php if ($_POST['pos_id_filter']): ?>
							<div class="ui stacked segment">
								<div class="ui blue ribbon icon label">Tabel Hasil Perangkingan</div>
								<br><br>
								<table id="example" class="ui celled table responsive nowrap unstackable" style="width:100%">
								    <thead>
								        <tr>
								        	<th>Rangking</th>
								            <th>Nama Lengkap</th>
								            <th>L / P</th>
								            <th>TTL</th>
								            <th>Kontak</th>
								            <th>Vektor S</th>
								            <th>Vektor V</th>
								        </tr>
								    </thead>
								    <tbody>
								        <tr>
								            <td>1</td>
								            <td>Alex Bardy</td>
								            <td>L</td>
								            <td>Edinburgh, 20-Nov-1990</td>
								            <td>alex@net.id</td>
								            <td>86.5752</td>
								            <td>0.367131</td>
								        </tr>
								        <tr>
								            <td>2</td>
								            <td>Garrett Bale</td>
								            <td>L</td>
								            <td>Tokyo, 07-Des-1989</td>
								            <td>bale@net.id</td>
								            <td>74.7531</td>
								            <td>0.316998</td>
								        </tr>
								        <tr>
								            <td>3</td>
								            <td>Ashton Martin</td>
								            <td>L</td>
								            <td>San Francisco, 12-Jul-1990</td>
								            <td>martin@net.id</td>
								            <td>74.4872</td>
								            <td>0.315871</td>
								        </tr>
								    </tbody>
								</table>
							</div>
						<?php endif ?>
						<!-- END DATATABLE -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END CONTENT -->