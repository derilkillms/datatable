<!DOCTYPE html>
<html>
<head>
	<title>Data Table Serverside</title>
</head>
<body>

<h2 align="center">Data Table Serverside</h2>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

<br>
<div class="container">
	<div class="card card-body">

		<form id="form-peserta">
			<table  id="example" class="display" style="width:100%">
				<thead>
					<tr>

						<th>No</th>
						<th>Name</th>
						<th>Country</th>
						<th>Phone</th>
						<th>Address</th>
						<th>Email</th>
						
					</tr>
				</thead>

				<tbody >

				</tbody>
				

			</table>
		</form>
		<span class="loading"></span>
	</div>
</div>

<script type="text/javascript">

	

	$(document).ready(function() {
		var table =	$('#example').DataTable({
			"language": {
				"url": "./lang/indonesia.json"
			},
			"processing": true,
			"serverSide": true,
			"ordering":false,
			"scrollX": true,
			"lengthMenu": [[10, 25, 50, 100, 1000, 2000], [10, 25, 50, 100, 1000, 2000]],


			"ajax": {
				url: 'data-ajax.php',
				type: 'post'
			}
		} );
		


		
	} );

	
</script>


</body>
</html>