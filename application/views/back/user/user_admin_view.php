<!-- BEGIN CONTEN -->
<div class="right floated thirteen wide computer sixteen wide phone column" id="content">
	<div class="ui container grid">
		<div class="row">
			<div class="fifteen wide computer sixteen wide phone centered column">
				<h2><i class="table icon"></i> PENGATURAN USER</h2>
				<div class="ui divider"></div>
				<div class="ui grid">
					<div class="sixteen wide computer sixteen wide phone centered column">
						<!-- <div class="ui positive message">
							<i class="close icon"></i>
							<div class="header">
								Great News!
							</div>
							<p>This example page shows DataTables integrated with this template.</p>
						</div> -->
						<h4></h4>
						<!-- BEGIN DATATABLE -->
						<div class="ui stacked segment">
							<div class="ui blue ribbon icon label">DATATABLE USER ADMIN</div>
							<br><br>
							<table id="tb_usrs" class="ui celled table responsive nowrap unstackable" style="width:100%">
							    <thead>
							        <tr>
							            <th style="width:8%;">No#</th>
							            <th style="width:20%;">Username</th>
							            <th>Email</th>
							            <th style="width:20%;">Nama</th>
							            <th style="width:20%;">Role</th>
							            <th style="width:15%;">Status</th>
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

    $(document).ready(function() {
        $.noConflict();
        //datatables
        table = $('#tb_usrs').DataTable({ 
            "processing": true, //Feature control the processing indicator.
            "serverSide": true, //Feature control DataTables' server-side processing mode.
            "order": [], //Initial no order.
            // Load data for the table's content from an Ajax source
            "ajax": {
                "url": "<?php echo base_url('admin/user_admin/ajax_list')?>",
                "type": "POST"
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