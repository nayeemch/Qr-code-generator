<?php include_once 'db_info.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>QR Code Generator</title>
	<link href="http://103.163.246.67/qr/assets/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="http://103.163.246.67/qr/css/style.css">
	<script src="http://103.163.246.67/qr/js/qrcode.js" defer></script>
	<script src="http://103.163.246.67/qr/js/script.js" defer></script>
	<script src='https://cdn.jsdelivr.net/jsbarcode/3.3.20/JsBarcode.all.min.js'></script>
</head>

<body>

<nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.php">QR Code Generator</a>
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class=""><a href="users-list.php">All Users List</a></li>
                        <li><a href="index.php">Add New User</a></li>
                        <li><a href="result.php">Change Result Page</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <!-- <li><a href="login.php"><span class="glyphicon glyphicon-user"></span> Sign In</a></li> -->
                        <li><a href="logout.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                    </ul>
                    </div>
                </div>
            </nav>

			
	<div class="main" id="main">




		<!-- <img src="./assets/qr_logo.png" alt="" width="250" height="250"> -->
		<?php if (isset($_REQUEST['id'])) :

			$id = $_REQUEST['id'];


			$query = "SELECT * FROM qrusers WHERE id ={$id}";

			// var_dump($news_id);

			$result = $conn->query($query);

			if ($result->num_rows == 1) :
				while ($row = $result->fetch_assoc()) :


		?>

					<section id="barcode" class="text-center">
						<svg id="code128"></svg>
						<h3>Barcode</h3>
						<h2 class="display:none;"></h2><?php echo $row['identification']?></h2>
						<script>
							JsBarcode("#code128", "<?php echo $row['identification']?>");
						</script>
					</section>

					<!-- <input type="text" style="display: none;" class="dataBox" name="data" placeholder="Paste your content" id="dataBox" value="http://103.163.246.67/qr/6836282952815/<?php // echo $row['id'] ?>" autocomplete="false"> -->

					<input type="text" style="display: none;" class="dataBox" name="data" placeholder="Paste your content" id="dataBox" value="http://103.163.246.67/qr/6836282952815.php?id=<?php echo $row['id'] ?>" autocomplete="false"> 

				<?php endwhile; ?>
			<?php endif; ?>
		<?php endif; ?>
		<button class="btn" id="generateBtn">Generate QR Code</button>
		<div class="qrdiv hide" id="qrdiv">
			<div class="qrcode" id="qrcode"></div>
			<button class="downloadBtn" id="downloadBtn">Download</button>
		</div>
	</div>


	<section id="single-user">
		<div class="container">
			<div class="row">
				<h2 class="text-center">User Details Page</h2>
				<table class="table table-bordered table-dark">

					<tbody>




						<?php
						// $sql="SELECT documents.doc_name,documents.id FROM qrusers";


						$sql = "SELECT qrusers.id,qrusers.name,qrusers.age,qrusers.gender,qrusers.mobile,qrusers.identification,qrusers.collectiontime,qrusers.resultime,qrusers.testnameresult FROM qrusers WHERE id ={$id}";


						$a = 1;
						$result = $conn->query($sql);
						if ($result->num_rows > 0) {
							while ($row = $result->fetch_assoc()) {

						?>


								<tr>
									<th>Name</th>
									<td style="text-transform: uppercase;"><?php echo $row['name']; ?></td>
								</tr>
								<tr>
									<th>Age</th>
									<td><?php echo $row['age']; ?></td>
								</tr>
								<tr>
									<th>Gender</th>
									<td><?php echo $row['gender']; ?></td>
								</tr>
								<tr>
									<th>Mobile</th>
									<td><?php echo $row['mobile']; ?></td>
								</tr>
								<tr>
									<th>Identification no</th>
									<td style="text-transform: uppercase;"><?php echo $row['identification']; ?></td>
								</tr>
								<tr>
									<th>Collection time</th>
									<td style="text-transform: uppercase;"><?php echo $row['collectiontime']; ?></td>
								</tr>
								<tr>
									<th>Result time</th>
									<td style="text-transform: uppercase;"><?php echo $row['resultime']; ?></td>
								</tr>
								<tr>
									<th>Test Name / Result</th>
									<td><?php echo $row['testnameresult']; ?></td>
								</tr>






						<?php $a++;
							}
						} ?>
					</tbody>
				</table>
			</div>
		</div>
	</section>
	<style>
		section#barcode text {
			display: none !important;
		}

		section#barcode h3 {
			margin-top: -5px;
			margin-bottom: 20px !important;
		}
	</style>

</body>

</html>