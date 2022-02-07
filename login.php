<?php include_once 'db_info.php'; ?>
<?php if ($_SESSION['isLoggedIn'] == 'yes') : ?>
<?php header("Location: users-list.php"); ?>
<?php else : ?>
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

        <div class="jumbotron">
            <div class="container">
                <div class="jumbotron text-center">
                    <h1>Login to Qr code generator</h1>
                    <!-- <p>QR project</p> -->
                </div>
            </div>
        </div>

        <div id="form">
            <form action="login-process.php" method="post" class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="username">Name:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="password">Password:</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input name="submit" type="submit" class="btn btn-primary">
                    </div>
                </div>
            </form>
        </div>

        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/main.js"></script>
    </body>

<?php endif ?>
    </html>