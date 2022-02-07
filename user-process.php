<?php include_once 'db_info.php'; ?>
<?php if(isset($_POST['name']) && isset($_POST['age']) && isset($_POST['gender']) && isset($_POST['mobile']) && isset($_POST['identification']) && isset($_POST['collectiontime']) && isset($_POST['resultime']) && isset($_POST['testnameresult']) ){

$name = $_POST['name'];
$age =  $_POST['age'];
$gender = $_POST['gender'];
$mobile =  $_POST['mobile'];
$identification = $_POST['identification'];
$collectiontime =  $_POST['collectiontime'];
$resultime = $_POST['resultime'];
$testnameresult =  $_POST['testnameresult'];



// echo $name . $age . $gender . $mobile . $identification . $collectiontime .$resultime . $testnameresult;
$query = "INSERT INTO qrusers (name,age,gender,mobile,identification,collectiontime,resultime,testnameresult) VALUES ('$name','$age','$gender','$mobile','$identification','$collectiontime','$resultime','$testnameresult')";
$result = $conn->query($query);?>
<?php if($result){ 
	// echo "New QR user added";
	header("Location: users-list.php");
}
else{}
header("login.php");
}?>

