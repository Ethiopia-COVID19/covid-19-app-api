<?php
$country = $_GET['country'];
$json_content = file_get_contents("https://corona.lmao.ninja/countries/".$country);
$mydata = json_decode($json_content);
if(empty($mydata->cases))
	die("Nothing Found !");
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title><?php echo $country; ?></title>
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
  <h3><img src="<?php echo html_entity_decode($mydata->countryInfo->flag); ?>" alt="Flag" height="28px" width="48px"> <?php echo $country; ?></h3>

  <div class="card">
    <div class="card-body">
		<ul>
		  <li>Total Cases: <strong><?php echo html_entity_decode(number_format($mydata->cases)); ?></strong></li>
		  <li>Today Cases: <strong><?php echo html_entity_decode(number_format($mydata->todayCases)); ?></strong></li>
		  <li>Total Deaths: <strong><?php echo html_entity_decode(number_format($mydata->deaths)); ?></strong></li>
		  <li>Today Deaths: <strong><?php echo html_entity_decode(number_format($mydata->todayDeaths)); ?></strong></li>
		  <li>Total Recovered: <strong><?php echo html_entity_decode(number_format($mydata->recovered)); ?></strong></li>
		  <li>Active: <strong><?php echo html_entity_decode(number_format($mydata->active)); ?></strong></li>
		  <li>Critical: <strong><?php echo html_entity_decode(number_format($mydata->critical)); ?></strong></li>
		</ul> 
		<a href="countries.php" class="card-link">All Countries</a>
    </div>
  </div>
  <br>
  <p>Source: <a href="https://www.worldometers.info/coronavirus/">www.worldometers.info</a></p>

</div>

</body>
</html>
