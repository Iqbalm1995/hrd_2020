<!-- BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> MASTER POSISI, DIVISI <?= strtoupper($detailDivision->div_name); ?></h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
						<?php echo $this->session->userdata('message1') <> '' ? $this->session->userdata('message1') : ''; ?>	

						<!-- BEGIN DATATABLE -->
                        <div class="ui stacked segment">
                            <div class="ui blue ribbon icon label">DETAIL DIVISI</div>
                            <br>
                            <br>
                            <table border="0" style="width:50%;">
                                <tr>
                                    <td style="width:30%;"><strong>Nama Divisi<strong></td>
                                    <td style="width:2%;"> : </td>
                                    <td><?= $detailDivision->div_name ?></td>
                                </tr>
                                <tr>
                                    <td style="width:30%;"><strong>Keterangan<strong></td>
                                    <td style="width:2%;"> : </td>
                                    <td><?= $detailDivision->desc ?></td>
                                </tr>
                                <tr>
                                    <td style="width:30%;"><strong>Status<strong></td>
                                    <td style="width:2%;"> : </td>
                                    <td><?= ( $detailDivision->status == '1' ? 'Aktif' : 'Non Aktif'); ?></td>
                                </tr>

                            </table>
                        </div>
                        <div class="ui stacked segment">
							<div class="ui blue ribbon icon label">DATATABLE POSISI</div>
							<br><br>
							<div class="ui clearing segment">
								<a href="<?php echo base_url('admin/divisions/tambahPosisi/'.$detailDivision->id); ?>" class="ui right floated primary button"><i class="plus icon"></i>Tambah Posisi</a>
								<a href="<?php echo base_url('admin/divisions/'); ?>" class="ui right floated grey button"><i class="reply icon"></i>Kembali</a>
							</div>
							<br>
							<table id="tb_position" class="ui celled table responsive nowrap unstackable" style="width:100%">
							    <thead>
							        <tr>
							            <th style="width:8%;">No#</th>
							            <th style="width:20%;">Nama Posisi</th>
							            <th>Keterangan</th>
							            <th style="width:20%;">Opsi</th>
							        </tr>
							    </thead>
							    <tbody>
							        
							    </tbody>
							</table>
						</div>
						<!-- END DATATABLE -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END CONTENT -->

<!-- JS -->
<script type="text/javascript">

    var save_method; //for save method string
    var table;
    var base_url = '<?php echo base_url();?>';
    var division_id = '<?= $detailDivision->id ?>';

    $(document).ready(function() {
        $.noConflict();
        //datatables
        table = $('#tb_position').DataTable({ 
            "processing": true, //Feature control the processing indicator.
            "serverSide": true, //Feature control DataTables' server-side processing mode.
            "order": [], //Initial no order.
            // Load data for the table's content from an Ajax source
            "ajax": {
                "url": "<?php echo base_url('admin/divisions/ajax_list_position')?>",
                "type": "POST",
                "data": function ( data ) {
                    data.division_id = division_id;
                }
            },
            //Set column definition initialisation properties.
            "columnDefs": [
                { 
                    "targets": [ 0 ], //first column
                    "orderable": false, //set not orderable
                },
                { 
                    "targets": [ -1 ], //last column
                    "orderable": false, //set not orderable
                },

            ],

        });

    });

    function reload_table()
    {
        table.ajax.reload(null,false); //reload datatable ajax 
    }

</script>