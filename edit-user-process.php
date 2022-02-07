<?php include_once 'db_info.php';
if (isset($_POST['id']) && isset($_POST['name']) && isset($_POST['age']) && isset($_POST['gender']) && isset($_POST['mobile']) && isset($_POST['identification']) && isset($_POST['collectiontime']) && isset($_POST['resultime']) && isset($_POST['testnameresult'])) {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $age =  $_POST['age'];
    $gender = $_POST['gender'];
    $mobile =  $_POST['mobile'];
    $identification = $_POST['identification'];
    $collectiontime =  $_POST['collectiontime'];
    $resultime = $_POST['resultime'];
    $testnameresult =  $_POST['testnameresult'];
    $query = "UPDATE qrusers SET name='{$name}',age='{$age}',gender='{$gender}',mobile='{$mobile}',identification='{$identification}',collectiontime='{$collectiontime}',resultime='{$resultime}',testnameresult='{$testnameresult}' WHERE id='{$id}';";

    $result = $conn->query($query);
    if ($result) {
        header("Location: users-list.php");
    }
    else {
        echo "Failed ";
    }
}

// isset if condition

else {
    echo "Data Parse Failed";
}
?>