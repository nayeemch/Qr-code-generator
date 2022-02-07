<?php include_once 'db_info.php'; ?>
<?php if ($_SESSION['isLoggedIn'] == 'yes') : ?>


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

        <div class="jumbotron">
            <div class="container">
                <div class="jumbotron text-center">
                    <h1>Qr code generator</h1>
                    <h3>Create new User</h3>
                </div>
            </div>
        </div>




        <section id="all-posts">
            <div class="container">
                <div class="row">
                    <table class="table table-bordered table-dark">
                        <thead>
                            <tr>
                                <th scope="col">Top Text</th>
                                <th scope="col">Thanks Text</th>
                                <th scope="col">Copyright Text</th>
                                <th scope="col">Copy Right Year</th>
                                <th scope="col">Logo</th>
                                <th scope="col">Change</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <?php


                            $sql = "SELECT resultpage.id,resultpage.toptext,resultpage.thankstext,resultpage.copyright,resultpage.resultlogo,resultpage.copyrightyear FROM resultpage ORDER BY resultpage.id DESC";

                            $result = $conn->query($sql);
                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {

                            ?>
                                    <tr>
                                         
                                        <td class="all-posts-content">
                                            <?php echo $row['toptext']; ?>
                                        </td>
                                
                                        <td class="all-posts-content">
                                            <?php echo $row['thankstext']; ?>
                                        </td>

                                        <td class="all-posts-content">
                                            <?php echo $row['copyright']; ?>
                                        </td>

                                        <td class="all-posts-content">
                                            <?php echo $row['copyrightyear']; ?>
                                        </td>

                                        <td class="all-posts-content">
                                            <img src="<?php echo $row['resultlogo']; ?>" alt="">
                                        </td>

                                        <td><a class="edit" href="edit-result.php?id=<?php echo $row['id']; ?>"><i class="fa fa-edit"></i></a></td>
                                        


                                        <script>
                                            function deleletconfig() {

                                                var del = confirm("Are you sure you want to delete this record?");
                                                if (del == true) {

                                                }
                                                return del;
                                            }
                                        </script>



                                    </tr>
                            <?php 
                                }
                            } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>

        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
<?php else : ?>
<?php header("Location:login.php"); ?>
<?php endif ?>

    </html>