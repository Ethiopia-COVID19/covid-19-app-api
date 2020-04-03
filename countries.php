<!DOCTYPE html>
<html lang="en">
<head>
  <title>All Countries</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background: #f2f2f2">
  
<div class="container">
	<br>
	<input class="form-control form-control-lg" style="background: #f9f9f9" id="myInput" type="text" placeholder="Country Search...">
	<br>
	<table class="table table-borderless table-hover table-sm" style="background: #FFFFFF; padding: 3px; border-radius: 6px;">
		<thead>
		  <tr>
			<th>#</th>
			<th>Country</th>
			<th class="text-center">Cases</th>
			<th class="text-center">Deaths</th>
		  </tr>
		</thead>
	<?php
	$json_content = file_get_contents("https://corona.lmao.ninja/countries");
	$content = json_decode($json_content);
	$i = 1;
	foreach($content as $mydata)
	{
	?>
	
	
	  <tbody id="myTable">
		  <tr style="cursor: pointer;" onclick="window.location='one_country.php?country=<?php echo html_entity_decode($mydata->country); ?>';">
			<td><?php echo $i; ?></td>
			<td><?php echo html_entity_decode($mydata->country); ?></td>
			<td class="text-center" style="color: #4a4a4a"><?php echo html_entity_decode(number_format($mydata->cases)); ?></td>
			<td class="text-center" style="color: #FF0000"><?php echo html_entity_decode(number_format($mydata->deaths)); ?></td>
		  </tr>
		</tbody>
	  
	<?php
	$i = $i + 1;
	}
	?>
	</table>
<p>Source: <a href="https://www.worldometers.info/coronavirus/">www.worldometers.info</a></p>
</div>

<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

</body>
</html>