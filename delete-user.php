<?php include_once 'db_info.php' ?>
<?php if($_SESSION['isLoggedIn']=='yes'): ?>

<?php
 // get id value
 $id = $_GET['id'];
 
// sql to delete a record
$sql1 = "DELETE FROM qrusers WHERE id='$id'";

// print_r($sql);
 
if (mysqli_query($conn, $sql1)) {
//    echo "Record deleted successfully";
} 
else {
    echo "Error deleting record: " . mysqli_error($conn);
}
// news deletion ends
 
include 'users-list.php';
 
?>

<?php else:?>
<?php header("Location:login.php");?>
<?php endif ?>
