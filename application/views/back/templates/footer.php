</div>
</body>
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
	        buttons: [ 'colvis', 'excel', 'pdf' ],
	        language: {
				buttons: {
					colvis: 'Visibility'
				}
			}
	    });
	    table.buttons().container().appendTo(
	    	$('div.eight.column:eq(0)', table.table().container())
	    );
	});
</script>
</html>