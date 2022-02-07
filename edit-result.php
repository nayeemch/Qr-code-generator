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

        <div class="jumbotron">
            <div class="container">
                <div class="jumbotron text-center">
                    <h1>Qr code generator</h1>
                    <!-- <p>QR project</p> -->
                </div>
            </div>
        </div>

        <div id="form">
            <form class="form-horizontal" action="edit-result-process.php" method="post" enctype="multipart/form-data">

                <?php if (isset($_REQUEST['id'])) :

                    $id = $_REQUEST['id'];


                    $query = "SELECT * FROM resultpage WHERE id ={$id}";

                    // var_dump($news_id);

                    $result = $conn->query($query);

                    if ($result->num_rows == 1) :
                        while ($row = $result->fetch_assoc()) :?>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="toptext">Top Head Text:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="toptext" name="toptext" value="<?php echo $row['toptext'] ?>" placeholder="Enter Top Head Text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="thankstext">Thanks you for choosing:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="thankstext" name="thankstext" value="<?php echo $row['thankstext'] ?>" placeholder="Enter Thanks for choosing company name">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="copyright">Copyright by :</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="copyright" name="copyright" value="<?php echo $row['copyright'] ?>" placeholder="Enter Copyright">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="resultlogo">Result Logo:</label>
                                <div class="col-sm-10">
                                    <!-- <input type="text" class="form-control" id="resultlogo" name="resultlogo" value="<?php // echo $row['resultlogo'] ?>" placeholder="Enter Image"> -->
                                    <input type="file" name="uploadfile" value=""/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="copyrightyear">Copyright Year:</label>
                                <div class="col-sm-10">
                                    <input type="number" class="form-control" id="copyrightyear" name="copyrightyear" value="<?php echo $row['copyrightyear'] ?>" placeholder="Enter Copyright year">
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">

                                    <input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">
                                    <input name="submit" type="submit" class="btn btn-primary" />
                                </div>
                            </div>


                        <?php endwhile; ?>
                    <?php endif; ?>
                <?php endif; ?>
            </form>
        </div>

        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
<?php else : ?>
    <?php header("Location:login.php"); ?>
<?php endif ?>

    </html>