<?php include_once 'db_info.php';
		if(isset($_POST['username']) && isset($_POST['password'])){
			$username = $_POST['username'];
			$password = $_POST['password'];
			$query = "SELECT id,username,password FROM users WHERE username='{$username}' AND password=md5('{$password}')";
			$result = $conn->query($query);
			if($result->num_rows == 1){
				while ($row = $result->fetch_assoc()) {
					$_SESSION['id'] = $row['id'];
					$_SESSION['isLoggedIn']='yes';
					header("Location:index.php");
				}
			}
			else{
				header("Location: login.php");	
			}

		}
		else
		{
			header("Location: login.php");
		}
	 ?>