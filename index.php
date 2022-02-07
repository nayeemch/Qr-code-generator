<?php include_once 'db_info.php'; ?>
<?php if($_SESSION['isLoggedIn']=='yes'): ?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Qr code generator</title>

    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/responsive.css" rel="stylesheet">

</head>

<body>


<section class="menu">


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



        </section>

    <div class="jumbotron">
        <div class="container">
            <div class="jumbotron text-center">
                <h1>Qr code generator</h1>
                <!-- <p>QR project</p> -->
            </div>
        </div>
    </div>

    <div id="form">
        <form class="form-horizontal" action="user-process.php" method="post">
            <div class="form-group">
                <label class="control-label col-sm-2" for="name">Name:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="age">Age:</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" id="age" name="age" placeholder="Enter age">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="gender">Gender:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="gender" name="gender" value="Male" placeholder="Enter gender">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="mobile">Mobile:</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" id="mobile" name="mobile" placeholder="Enter Mobile">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="identification">Identification ID:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="identification" name="identification" placeholder="Enter Identification ID">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="collectiontime">Sample Collection time:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="collectiontime" name="collectiontime" value="21-09-2021 04:53PM" placeholder="Enter Sample Collection time (21-09-2021 04:53PM)">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="resultime">Result time:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="resultime" name="resultime" value="21-09-2021 04:53PM" placeholder="Enter Result time (21-09-2021 04:53PM)"> 
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="testnameresult">Test Name/Result:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="testnameresult" name="testnameresult" value="COVID-19 PCR / Negative" placeholder="Enter Test name and Result (COVID-19 PCR / Negative)">
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <input name="submit" type="submit" class="btn btn-primary" />
                </div>
            </div>
        </form>
    </div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
</body>
<?php else:?>
<?php header("Location:login.php");?>
<?php endif ?>
</html>