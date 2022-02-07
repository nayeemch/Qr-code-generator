<?php include_once 'db_info.php';
$msg = "";
if (isset($_POST['id']) && isset($_POST['toptext']) && isset($_POST['thankstext']) && isset($_POST['copyright']) && isset($_POST['copyrightyear']) ) {
    $id = $_POST['id'];
    $toptext = $_POST['toptext'];
    $thankstext =  $_POST['thankstext'];
    $copyright = $_POST['copyright'];
    $copyrightyear =  $_POST['copyrightyear'];
  
    $filename = $_FILES["uploadfile"]["name"];
    $tempname = $_FILES["uploadfile"]["tmp_name"];    
    $folder = "assets/".$filename;

    $query = "UPDATE resultpage SET toptext='{$toptext}',thankstext='{$thankstext}',copyright='{$copyright}',resultlogo='{$folder}' WHERE id='{$id}';";
        if (move_uploaded_file($tempname, $folder))  {
            $msg = "Image uploaded successfully";
        }else{
            $msg = "Failed to upload image";
    }

    $result = $conn->query($query);
    if ($result) {
        header("Location: result.php");
    }
    else {
        echo "Failed ";
    }

    // echo $_POST['toptext'];

    // print_r ($_POST['toptext']);
    // print_r ($_POST['thankstext']);
    // print_r ($_POST['copyright']);
    // print_r ($_POST['copyrightyear']);
    // print_r ($_POST['id']);
    // print_r ($filename);
    // print_r ($tempname);
    // print_r ($folder);

}

// isset if condition

else {
    echo "Data Parse Failed";
}
?>
