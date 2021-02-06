	</div>
</body>
<!-- datatables:js -->
<script src="<?= base_url('/assets/'); ?>vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?= base_url('/assets/'); ?>vendors/datatables.net/datatables.net-se/js/dataTables.semanticui.min.js"></script>
<script src="<?= base_url('/assets/'); ?>vendors/datatables.net/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?= base_url('/assets/'); ?>vendors/datatables.net/datatables.net-responsive-se/js/responsive.semanticui.min.js"></script>
<script src="<?= base_url('/assets/'); ?>vendors/datatables.net/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="<?= base_url('/assets/'); ?>vendors/datatables.net/datatables.net-buttons/js/buttons.colVis.min.js"></script>
<script src="<?= base_url('/assets/'); ?>vendors/datatables.net/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="<?= base_url('/assets/'); ?>vendors/datatables.net/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="<?= base_url('/assets/'); ?>vendors/datatables.net/datatables.net-buttons-se/js/buttons.semanticui.min.js"></script>
<script src="<?= base_url('/assets/'); ?>vendors/jszip/jszip.min.js"></script>
<script src="<?= base_url('/assets/'); ?>vendors/pdfmake/pdfmake.min.js"></script>
<script src="<?= base_url('/assets/'); ?>vendors/pdfmake/vfs_fonts.js"></script>
<!-- endinject -->
<script>
	$(document).ready(function(){
		// - MESSAGES
		$('.message .close').on('click', function() {
		    $(this)
		      .closest('.message')
		      .transition('fade')
		    ;
		});
		// - DATATABLES
	    $(document).ready(function(){
		    $('#example').DataTable();
		});
		var table = $('#example').DataTable({
	        lengthChange: false,
	        buttons: [ 'copy', 'excel', 'pdf' ]
	    });
	    table.buttons().container().appendTo(
	    	$('div.eight.column:eq(0)', table.table().container())
	    );
	});
</script>
</html>