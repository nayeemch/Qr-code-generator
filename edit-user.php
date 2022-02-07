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
            <form class="form-horizontal" action="edit-user-process.php" method="post">



                <?php if (isset($_REQUEST['id'])) :

                    $id = $_REQUEST['id'];


                    $query = "SELECT * FROM qrusers WHERE id ={$id}";

                    // var_dump($news_id);

                    $result = $conn->query($query);

                    if ($result->num_rows == 1) :
                        while ($row = $result->fetch_assoc()) :


                ?>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="name">Name:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="name" name="name" value="<?php echo $row['name'] ?>" placeholder="Enter Name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="age">Age:</label>
                                <div class="col-sm-10">
                                    <input type="number" class="form-control" id="age" name="age" value="<?php echo $row['age'] ?>" placeholder="Enter age">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="gender">Gender:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="gender" name="gender" value="<?php echo $row['gender'] ?>" placeholder="Enter gender">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="mobile">Mobile:</label>
                                <div class="col-sm-10">
                                    <input type="number" class="form-control" id="mobile" name="mobile" value="<?php echo $row['mobile'] ?>" placeholder="Enter Mobile">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="identification">Identification ID:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="identification" name="identification" value="<?php echo $row['identification'] ?>" placeholder="Enter Identification ID">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="collectiontime">Sample Collection time:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="collectiontime" name="collectiontime" value="<?php echo $row['collectiontime'] ?>" placeholder="Enter Sample Collection time (21-09-2021 04:53PM)">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="resultime">Result time:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="resultime" name="resultime" value="<?php echo $row['resultime'] ?>" placeholder="Enter Result time (21-09-2021 04:53PM)">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="testnameresult">Test Name/Result:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="testnameresult" name="testnameresult" value="<?php echo $row['testnameresult'] ?>" placeholder="Enter Test name and Result (COVID-19 PCR / Negative)">
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